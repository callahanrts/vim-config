vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onedark"

local util = require "theme.onedark.util"
Config = require "theme.onedark.config"
C = require "theme.onedark.palette"
local highlights = require "theme.onedark.highlights"
local Treesitter = require "theme.onedark.Treesitter"
local markdown = require "theme.onedark.markdown"
local Whichkey = require "theme.onedark.Whichkey"
local Git = require "theme.onedark.Git"
local LSP = require "theme.onedark.LSP"

local skeletons = {
  highlights,
  Treesitter,
  markdown,
  Whichkey,
  Git,
  LSP,
}

for _, skeleton in ipairs(skeletons) do
  util.initialise(skeleton)
end
