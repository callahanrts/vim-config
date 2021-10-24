-- Awesome neovim
-- https://github.com/rockerBOO/awesome-neovim#treesitter-support

-- NVIM lua guide
-- https://github.com/nanotee/nvim-lua-guide#calling-vimscript-functions

-- core
require('core.application')
require('plugins')
require('core.keybindings')
require('core.autocmds')

-- plugins
require('plugins.autopairs')
require('plugins.gitsigns')
require('plugins.fzf')
-- require('plugins.telescope')
require('plugins.kitty')
require('plugins.nvim-tree')
require('plugins.tagbar')
require('plugins.codi')
require('plugins.prettier')
require('plugins.which-key')
require('plugins.trouble')
require('plugins.diffview')
require('plugins.org')

-- LSP
require('lsp')

-- ui
require('ui')
require('theme')
require('plugins.vim-illuminate')
require('plugins.indent-line')
-- require('plugins.galaxyline')
require('plugins.lualine')
require('treesitter')
require('plugins.treesitter-refactor')

-- Dev plugins
require('plugins.pageline')
