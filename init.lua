-- Awesome neovim
-- https://github.com/rockerBOO/awesome-neovim#treesitter-support

-- NVIM lua guide
-- https://github.com/nanotee/nvim-lua-guide#calling-vimscript-functions

-- core
require('application')
require('packages')
require('keybindings')

-- plugins
require('plugins.airline')
require('plugins.gitgutter')
require('plugins.telescope')
require('plugins.kitty')
require('plugins.markdown')
require('plugins.elm')
require('plugins.nvim-tree')
require('plugins.prettier')
require('plugins.tagbar')
require('plugins.vim-go')
require('plugins.vim-test')
require('plugins.vim-illuminate')
require('plugins.codi')
require('plugins.which-key')
require('plugins.indent-line')

-- LSP
require('lsp')
require('lsp.compe')
require('lsp.lspkind')
require('lsp.lspsaga')
require('lsp.servers')

-- ui
require('ui')
require('theme')
require('theme.icons')
