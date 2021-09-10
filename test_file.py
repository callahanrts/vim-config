import math, re
import rhino3dm as rs
import ezdxf
from typing import Union, Dict
from dataclasses import dataclass, field

# Types

class Point():
    def __init__(self, x: float = 0.0, y: float = 0.0, z: float = 0.0):
        self.x = x
        self.y = y
        self.z = z

    def __str__(self):
       return f"Point({self.x}, {self.y}, {self.z})"

# Curve Lines

class CurveLines():
    _90 = math.pi * .5
    _180 = math.pi
    _270 = 3 * math.pi * .5
    _360 = math.pi * 2
    MAX_RADIUS = 10000 # Any radii larger than this will become lines

    def __init__(self, tolerance):
        self.tolerance = tolerance

    # determines which quadrant to use to derive the angle
    def find_quadrant(self, v1: Union[Vector,Vector]) -> int:
        quad = 0
        if v1.x < 0 and v1.y >= 0:
            quad = 1

        elif v1.x < 0 and v1.y < 0:
            quad = 2

        elif v1.x >= 0 and v1.y < 0:
            quad = 3

        return quad

    def find_angle(self, v1: Union[Vector, Vector]):
        angle = 0
        quad = self.find_quadrant(v1)

        # upper right
        if quad == 0:
            t1 = dot2(Point(1, 0), v1)
            t2 = dot2(Point(0, 1), v1)

            if t1 > t2:
                angle = math.acos(t1)
            else:
                angle = CurveLines._90 - math.acos(t2)

        # upper left
        if quad == 1:
            t1 = dot2(Point(0, 1), v1)
            t2 = dot2(Point(-1, 0), v1)

            if (t1 > t2):
                angle = math.acos(t1) + CurveLines._90
            else:
                angle = CurveLines._180 - math.acos(t2)

        # lower left
        if quad == 2:
            t1 = dot2(Point(-1, 0), v1)
            t2 = dot2(Point(0, -1), v1)

            if t1 > t2:
                angle = math.acos(t1) + CurveLines._180
            else:
                angle = CurveLines._270 - math.acos(t2)

        # lower right
        if quad == 3:
            t1 = dot2(Point(0, -1), v1)
            t2 = dot2(Point(0, 0), v1)

            if t1 > t2:
                angle = math.acos(t1) + CurveLines._270
            else:
                angle = CurveLines._360 - math.acos(t2)

        return angle

    def get_intersection_radius(self, p1: Point, p2: Point, n1: Vector, n2: Vector) -> tuple[float, float, Point]:
        sx = 0 if n1.x - n2.x == 0 else (p2.x - p1.x) / (p1.x - p2.x)
        sy = 0 if n1.y - n2.y == 0 else (p2.y - p1.y) / (n1.y - n2.y)
        radius = max(sx, sy)
        c1 = Point(p1.x + n1.x * radius, p1.y + n1.y * radius)
        c2 = Point(p2.x + n2.x * radius, p2.y + n2.y * radius)
        diff = Point(c1.x - c2.x, c1.y - c2.y)
        error = -1 if radius == 0 else length2(diff)
        center = c1
        return (error, radius, center)

    def get_best_fit_arc(self, start: Point, end: Point, middle: Point) -> tuple[Point, float, float, float]:
        # given a width and height we can solve for the radius.
        # radius = h * .5 + w^2 / 8 * h

        # start with getting the normal to the center of the circle
        v1 = Point(start.x - middle.x, start.y - middle.y, 0)
        v2 = Point(end.x - middle.x, end.y - middle.y, 0)
        v3 = Point(end.x - start.x, end.y - start.y, 0)
        cross = normalize3(cross3(v1, v2))
        normal = normalize3(cross3(v3, cross))

        # get the radius
        width = length2(v3)
        height = dot2(v1, normal)
        radius = height * .5 + (width * width / (8 * height))

        # get the exact middle between the start and end point
        widthReciprocal = 1 / width
        n3 = Point(v3.x * widthReciprocal, v3.y * widthReciprocal)

        # project along the normal at half the distance
        halfWidth = width * .5
        centerWidth = Point(start.x + n3.x * halfWidth, start.y + n3.y * halfWidth)

        # now get center
        s = radius - height
        center = Point(centerWidth.x + normal.x * s, centerWidth.y + normal.y * s)

        # now get the start and end angles
        nStart = normalize2(Point(start.x - center.x, start.y - center.y))
        nEnd = normalize2(Point(end.x - center.x, end.y - center.y))
        startAngle = self.find_angle(nStart);
        endAngle = self.find_angle(nEnd);

        return (center, radius, startAngle, endAngle)

    def bin_points_into_lines_and_arcs(self, pts: list[Point]) -> Dict:
        # states
        INITIAL = 0
        STARTING = 1
        LINE = 2
        ARC = 3
        UNKNOWN = 4

        bins = []
        state = State(mode = INITIAL)
        curveCount = 0
        lineCount = 0

        # walk the points and collect them into bins of arcs and lines
        for pt in pts:
            # if start a new set of points
            if state.mode == INITIAL:
                state.current = Bin(arc = False)
                state.prevPoint = pt
                state.mode = STARTING
                continue

            # starting a new bin
            if state.mode == STARTING:
                # create a new bin
                state.current = Bin(arc = False)
                state.current.points = []
                state.current.points.append(state.prevPoint)
                state.current.points.append(pt)

                # make a vec from the previous point
                state.prevVec = normalize3(Point(pt.x - state.prevPoint.x, pt.y - state.prevPoint.y, 0))
                state.current.startVec = state.prevVec
                state.current.endVec = state.prevVec
                state.current.startPoint = state.prevPoint
                state.prevPoint = pt
                state.current.endPoint = pt
                state.current.startAngle = 0
                state.current.endAngle = 0
                state.current.radius = 0
                state.current.center = pt
                state.current.pointCount = 0

                bins.append(state.current)

                # set state to unknown
                state.mode = UNKNOWN
                continue

            # new bin started but we don't know what we are yet
            if state.mode == UNKNOWN:
                current = state.current
                currentVec = normalize3(Point(pt.x - state.prevPoint.x, pt.y - state.prevPoint.y, 0))
                sinTheta = length3(cross3(current.startVec, currentVec))

                # state.mode = LINE if sinTheta < self.tolerance else ARC
                state.mode = ARC

                if state.mode == ARC:
                    curveCount += 1
                else:
                    lineCount += 1

                # update current and state
                current.endPoint = pt
                state.startVec = currentVec
                state.prevVec = currentVec
                state.prevPoint = pt
                current.pointCount += 1
                current.points.append(pt)
                continue

            # this is a line
            if state.mode == LINE:
                current = state.current
                current.arc = False
                start = current.startPoint
                normal = current.startVec
                currentVec = normalize3(Vector(pt.x - state.prevPoint.x, pt.y - state.prevPoint.y, 0))

                # calc distance new point is away from the first point and vector
                vectorToPlane = Point(pt.x - start.x, pt.y - start.y, 0)
                distance = dot3(normal, vectorToPlane)

                # now project that point along the first vector
                p1 = Point(start.x + normal.x * distance, start.y + normal.y * distance)

                # now get error from project point to actual point
                error = length2(Vector(p1.x - pt.x, p1.y - pt.y))

                # see if the line ended, if so set the state to starting
                state.mode = LINE if error <= self.tolerance else STARTING

                # update current and state
                current.endVec = currentVec
                current.endPoint = pt
                state.prevVec = currentVec
                state.prevPoint = pt
                current.pointCount += 1
                current.points.append(pt)
                continue

            # this is a arc
            if state.mode == ARC:
                # compare this vector to the first one, make sure they point
                vec = normalize3(Vector(pt.x - state.prevPoint.x, pt.y - state.prevPoint.y, 0))
                crossProduct = normalize3(cross2(vec, state.startVec))

                # find endpoint normals
                current = state.current
                current.arc = True
                start = current.startVec
                n1 = normalize3(cross3(start, crossProduct))
                n2 = normalize3(cross3(vec, crossProduct))
                startPoint = current.startPoint
                error, radius, center = self.get_intersection_radius(startPoint, pt, n1, n2)

                # if we are ending the curve then get all the info we need
                state.mode = STARTING if error > self.tolerance or error < 0 else state.mode
                middleIndex = math.floor((len(current.points) + 1) * 0.5)

                # calc the center, radius, start and end angles
                (center, radius, startAngle, endAngle) = self.get_best_fit_arc(startPoint, pt, current.points[middleIndex]);

                if abs(radius) > CurveLines.MAX_RADIUS:
                    state.mode = LINE
                    lineCount += 1
                    curveCount -= 1
                else:
                    current.center = center
                    current.radius = radius

                # ////////// Adjust the start and end angle /////////////////////
                # see if we are crossing the 0 boundary
                if startAngle > CurveLines._270 and endAngle < CurveLines._90:
                    current.startAngle = startAngle;
                    current.endAngle = endAngle;
                elif startAngle < CurveLines._90 and endAngle > CurveLines._270:
                    current.startAngle = endAngle
                    current.endAngle = startAngle
                # see if we need to re-order
                elif startAngle > endAngle:
                    current.startAngle = endAngle
                    current.endAngle = startAngle
                else:
                    current.startAngle = startAngle
                    current.endAngle = endAngle

                # update the current and state
                current.endVec = vec
                current.endPoint = pt
                state.prevVec = vec
                state.prevPoint = pt
                current.pointCount += 1
                current.points.append(pt)

                continue

        return { 'bins': bins, 'curve_count': curveCount, 'line_count': lineCount }


def get_curve(e):
    points = list(map(lambda p: rs.Point3d(p[0], p[1], p[2]), e.control_points))
    return rs.Curve.CreateControlPointCurve(points, e.dxf.degree)

def spline_points(entity):
    total_control_points = entity.dxf.n_control_points

    # exploded = []
    points = []
    segments = 64

    # Create a bezier curve object from the spline entity
    curve = get_curve(entity)

    # Parse the min/max of the knot vector
    t0 = min(entity.knots)
    t1 = max(entity.knots)

    # Determine the step size
    step = (t1 - t0) / (total_control_points * segments)

    # Iterate over each point (64 segments per control point)
    for i in range(0, total_control_points * segments + 1):
        # Determine the current position through the curve
        t = min(t0 + i * step, t1)

        # Retrieve the point at this position around the curve
        point = curve.PointAt(t)
        points.append(Point(point.X, point.Y, point.Z))

    return points

def explode_spline(entity):
    points = spline_points(entity)
    curve_lines = CurveLines(.005)
    result = curve_lines.bin_points_into_lines_and_arcs(points)

    def to_entity(obj):
        # if obj.arc:
            return Arc(obj.center, obj.radius, obj.startAngle, obj.endAngle)
        else:
            return Line(obj.startPoint, obj.endPoint)

    entities = list(map(to_entity, result['bins']))
    return entities
