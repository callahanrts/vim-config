local M = {}

local function leftMarker(prefs, current)
  if current then
    return "%#PageLineLeftSel#" .. prefs.current.separator.left.character
  end

  return "%#PagelineLeft#" .. prefs.tab.separator.left.character
end

local function rightMarker(prefs, current)
  if current then
    return "%#PageLineRightSel#" .. prefs.current.separator.right.character
  end

  return "%#PagelineRight#" .. prefs.tab.separator.right.character
end

local function labelSection(page, index, current)
  local highlight = "%#PageLine#"
  local label = page.name or page.id

  if current then
    highlight = "%#PageLineSel#"
  end

  return highlight .. label
end

local function rightSection(prefs, page, current)
  local ctx = prefs.tab
  local modHighlight = "%#PageLineMod#"
  local rightHighlight = "%#PageLineRight#"

  if current then
    ctx = prefs.current
    modHighlight = "%#PageLineModSel#"
    rightHighlight = "%#PageLineRightSel#"
  end

  local modified = string.rep(" ", string.len(ctx.modified.character))

  if page.modified > 0 then
    modified = modHighlight .. ctx.modified.character .. " "
  end

  return modified .. rightHighlight .. ctx.separator.right.character
end

local function leftSection(prefs, current)
  local ctx = prefs.tab
  local leftHighlight = "%#PageLineLeft#"

  if current then
    ctx = prefs.current
    leftHighlight = "%#PageLineLeftSel#"
  end

  -- Add padding to match modifier (on right)
  local padding = string.rep(" ",  2)

  return leftHighlight .. ctx.separator.left.character .. padding
end

function M.tabLabel(prefs, page, index, current)
  local label = labelSection(page, index, current)
  local right = rightSection(prefs, page, current)
  local left = leftSection(prefs, current)
  local ctx = prefs.tab

  if current then
    ctx = prefs.current
  end

  local padding = string.rep(" ", ctx.padding)

  return left .. padding .. label .. padding .. right
end

return M
