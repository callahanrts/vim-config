-- Awesome neovim
-- https://github.com/rockerBOO/awesome-neovim#treesitter-support

-- NVIM lua guide
-- https://github.com/nanotee/nvim-lua-guide#calling-vimscript-functions

-- NOTE
-- when nvim-tree, or theme is commented out, the vim welcome text appears.
-- With both enabled, it disappears after a second

-- core
require('application')

require('plugins')
require('keybindings')
require('autocmds')

-- plugins
require('plugins.coc')
require('plugins.fzf')
require('plugins.gitsigns')
require('plugins.kitty')
require('plugins.lualine')
require('plugins.nvim-tree')
require('plugins.pageline') -- Dev plugin
require('plugins.which-key')

-- ui
require('ui')
require('theme')
require('treesitter')
