vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onedarker"

local util = require "theme.onedarker.util"
Config = require "theme.onedarker.config"
C = require "theme.onedarker.palette"
local highlights = require "theme.onedarker.highlights"
local Treesitter = require "theme.onedarker.Treesitter"
local markdown = require "theme.onedarker.markdown"
local Whichkey = require "theme.onedarker.Whichkey"
local Git = require "theme.onedarker.Git"
local LSP = require "theme.onedarker.LSP"

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
