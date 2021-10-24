local M = {}

local function getBuffers(pageIndex)
  local buffers = {}
  local buflist = vim.fn.tabpagebuflist(pageIndex + 1)

  for _, bufferID in ipairs(buflist) do
    local buffer = {
      id = bufferID,
      modified = vim.fn.getbufvar(bufferID, '&modified') == 1
    }
    table.insert(buffers, buffer)
  end

  return buffers
end

local function activeBuffer(page)
end

local function totalModified(buffers)
  local total = 0
  for _, buf in ipairs(buffers) do
    if buf.modified then
      total = total + 1
    end
  end

  return total
end

function M.getPages()
  local pages = {}

  for i = 0, vim.fn.tabpagenr("$") - 1 do
    local buffers = getBuffers(i)
    local buflist = vim.fn.tabpagebuflist(i + 1)
    local winnr = vim.fn.tabpagewinnr(i + 1)
    local filename = vim.fn.bufname(buflist[winnr])
    local page = {
      id = i + 1,
      buffers = buffers,
      name = string.gsub(filename, "^.*/", ""),
      modified = totalModified(buffers)
    }

    table.insert(pages, page)
  end

  return pages
end

return M
