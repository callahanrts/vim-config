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
require('plugins.gitsigns')
require('plugins.fzf')
require('plugins.kitty')
require('plugins.nvim-tree')
require('plugins.which-key')
require('plugins.coc')

-- Might not need
--+ require('plugins.vim-illuminate')
--+ require('plugins.indent-line')
--+ require('plugins.autopairs')

-- Don't really use this currently, but it would be nice
--+ require('plugins.prettier')

-- Would use, but has trouble
--+ require('plugins.diffview')

-- Don't use, really
--+ require('plugins.tagbar')
--+ require('plugins.codi')
--+ require('plugins.trouble')
--+ require('plugins.treesitter-refactor')

-- LSP
-- require('lsp')
-- require('coc')

-- ui
require('ui')
require('theme')
require('plugins.lualine')
require('treesitter')

-- Dev plugins
require('plugins.pageline')
