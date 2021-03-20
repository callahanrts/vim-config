-- Awesome neovim
-- https://github.com/rockerBOO/awesome-neovim#treesitter-support

-- NVIM lua guide
-- https://github.com/nanotee/nvim-lua-guide#calling-vimscript-functions

-- core
require('application')
require('plugins')
require('keybindings')

-- plugins
require('plugins.airline')
require('plugins.gitgutter')
require('plugins.telescope')
require('plugins.kitty')
require('plugins.markdown')
require('plugins.elm')
-- require('plugins.nerdtree')
require('plugins.nvim-tree')
require('plugins.prettier')
require('plugins.tagbar')
require('plugins.vim-go')
require('plugins.vim-test')
-- require('plugins.coc')
-- require('plugins.fzf')
-- require('plugins.ultisnips')

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
-- require('plugins.bufferline')
