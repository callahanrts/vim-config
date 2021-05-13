local pages = require('pageline/pages')
local label = require('pageline/label')

-- Start with default state
local state = require('pageline/state')

local M = {}

local function set_colors()
  local background = state.prefs.background
  local tab = state.prefs.tab
  local current = state.prefs.current

  -- Background
  vim.cmd("hi PageLineFill guibg=" .. background)

  -- Unselected tab
  vim.cmd("hi PageLine guifg=" .. tab.text .. " guibg=" .. tab.background)
  vim.cmd("hi PageLineLeft guifg=" .. tab.separator.left.text .. " guibg=" .. tab.separator.left.background)
  vim.cmd("hi PageLineRight guifg=" .. tab.separator.right.text   .. " guibg=" .. tab.separator.right.background)
  vim.cmd("hi PageLineMod guifg=" .. tab.modified.text   .. " guibg=" .. tab.modified.background)

  -- Selected tab
  vim.cmd("hi PageLineSel guifg=" .. current.text .. " guibg=" .. current.background)
  vim.cmd("hi PageLineLeftSel guifg=" .. current.separator.left.text  .. " guibg=" .. current.separator.left.background)
  vim.cmd("hi PageLineRightSel guifg=" .. current.separator.right.text .. " guibg=" .. current.separator.right.background)
  vim.cmd("hi PageLineModSel guifg=" .. current.modified.text   .. " guibg=" .. current.modified.background)
end

local function pageline()
  local line = ""

  for _, page in ipairs(pages.getPages()) do
    local current = page.id == vim.fn.tabpagenr()
    line = line .. label.tabLabel(state.prefs, page, current)
  end

  line = line .. '%#PageLineFill#%T'

  return line
end

function M.setup(prefs)
  state.prefs = vim.tbl_deep_extend("force", state.prefs, prefs)
  set_colors()

  function _G.nvim_pageline()
    return pageline()
  end

  vim.o.tabline = "%!v:lua.nvim_pageline()"
end

return M
