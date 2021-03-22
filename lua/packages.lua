vim.cmd("call plug#begin('~/.config/nvim/plugged')")

vim.cmd("Plug 'jiangmiao/auto-pairs'")          -- Bracket completion
vim.cmd("Plug 'airblade/vim-gitgutter'")        -- See git status in the gutter
vim.cmd("Plug 'kyazdani42/nvim-tree.lua'")      -- File browser
vim.cmd("Plug 'tpope/vim-surround'")            -- Surrounding text with stuff
vim.cmd("Plug 'gorkunov/smartpairs.vim'")       -- Select pairs of things (eg. vi', vi<)
vim.cmd("Plug 'tpope/vim-fugitive'")            -- Github shit
vim.cmd("Plug 'tpope/vim-rhubarb'")             -- Fugitive is the Git, rhubarb is the hub
vim.cmd("Plug 'godlygeek/tabular'")             -- Align text
vim.cmd("Plug 'vim-scripts/repeat.vim'")        -- Repeat plugin commands (not just native) using .
vim.cmd("Plug 'tpope/vim-commentary'")          -- Comment stuff
vim.cmd("Plug 'vim-scripts/largefile'")         -- Optimize opening giant files
vim.cmd("Plug 'janko-m/vim-test'")              -- Run tests
vim.cmd("Plug 'tpope/vim-eunuch'")              -- Run unix-y commands from vim
vim.cmd("Plug 'knubie/vim-kitty-navigator'")    -- Seamless kitty splits
vim.cmd("Plug 'SirVer/ultisnips'")              -- Snippets
vim.cmd("Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }")
vim.cmd("Plug 'junegunn/fzf.vim'")              -- Fuzzy search
vim.cmd("Plug 'preservim/tagbar'")              -- Tagbar
vim.cmd("Plug 'andymass/vim-matchup'")          -- Improve %
vim.cmd("Plug 'metakirby5/codi.vim'")           -- Scratchpad
vim.cmd("Plug 'Yggdroot/indentLine'")           -- Show indents
-- vim.cmd("Plug 'norcalli/nvim-colorizer.lua'")   -- Show CSS colors

-- Show organization of leader keybindings
vim.cmd("Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }")

-- Consider adding:
-- 'https://github.com/gennaro-tedesco/nvim-jqx'
-- 'https://github.com/kevinhwang91/rnvimr' -- Condier checking out ranger first

-- post install (yarn install | npm install) then load plugin only for editing supported files
vim.cmd("Plug 'prettier/vim-prettier', { 'do': 'yarn install' }")

-- Select html attributes with vix
vim.cmd("Plug 'kana/vim-textobj-user' | Plug 'whatyouhide/vim-textobj-xmlattr'")

-- For looks
vim.cmd("Plug 'rakr/vim-one'") -- One Dark theme (for airline only at this point)
vim.cmd("Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}")
vim.cmd("Plug 'vim-airline/vim-airline'")
vim.cmd("Plug 'tjdevries/colorbuddy.vim'")
vim.cmd("Plug 'kyazdani42/nvim-web-devicons'") -- Recommended (for coloured icons)
vim.cmd("Plug 'RRethy/vim-illuminate'") -- Highlight token under cursor

-- LSP
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'hrsh7th/nvim-compe'")
vim.cmd("Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }")
vim.cmd("Plug 'onsails/lspkind-nvim'")
-- Plug 'thomasfaingnaert/vim-lsp-snippets'
-- Plug 'thomasfaingnaert/vim-lsp-ultisnips'

-- Telescope
vim.cmd("Plug 'nvim-lua/popup.nvim'")
vim.cmd("Plug 'nvim-lua/plenary.nvim'")
vim.cmd("Plug 'nvim-telescope/telescope.nvim'")

vim.cmd("call plug#end()")
