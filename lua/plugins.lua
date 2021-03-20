vim.cmd("set encoding=utf-8")

vim.cmd("call plug#begin('~/.nvim/plugged')")

vim.cmd("Plug 'jiangmiao/auto-pairs'")          -- Bracket completion
vim.cmd("Plug 'airblade/vim-gitgutter'")        --  See git status in the gutter
-- vim.cmd("Plug 'scrooloose/nerdtree'")           --  Nice directory view
vim.cmd("Plug 'kyazdani42/nvim-tree.lua'")
vim.cmd("Plug 'tpope/vim-surround'")            --  Surrounding text with stuff
vim.cmd("Plug 'gorkunov/smartpairs.vim'")       --  Select pairs of things (eg. vi', vi<)
vim.cmd("Plug 'tpope/vim-fugitive'")            --  Github shit
vim.cmd("Plug 'tpope/vim-rhubarb'")             --  Fugitive is the Git, rhubarb is the hub
vim.cmd("Plug 'godlygeek/tabular'")             --  Align text
vim.cmd("Plug 'vim-scripts/repeat.vim'")        --  Repeat plugin commands (not just native) using .
vim.cmd("Plug 'tpope/vim-commentary'")          --  Comment stuff
vim.cmd("Plug 'vim-scripts/largefile'")         --  Optimize opening giant files
vim.cmd("Plug 'janko-m/vim-test'")              --  Run tests
vim.cmd("Plug 'tpope/vim-eunuch'")              --  Run unix-y commands from vim
vim.cmd("Plug 'knubie/vim-kitty-navigator'")    --  Seamless kitty splits
vim.cmd("Plug 'SirVer/ultisnips'")              --  Snippets
vim.cmd("Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }")
vim.cmd("Plug 'junegunn/fzf.vim'")              -- Fuzzy search
vim.cmd("Plug 'preservim/tagbar'")              -- Tagbar

-- post install (yarn install | npm install) then load plugin only for editing supported files
vim.cmd("Plug 'prettier/vim-prettier', { 'do': 'yarn install' }")

-- Select html attributes with vix
vim.cmd("Plug 'kana/vim-textobj-user' | Plug 'whatyouhide/vim-textobj-xmlattr'")

-- For looks
vim.cmd("Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}")
vim.cmd("Plug 'rakr/vim-one'") -- One Dark theme
vim.cmd("Plug 'vim-airline/vim-airline'")
vim.cmd("Plug 'tjdevries/colorbuddy.vim'")
vim.cmd("Plug 'Th3Whit3Wolf/onebuddy'")
vim.cmd("Plug 'kyazdani42/nvim-web-devicons'") -- Recommended (for coloured icons)

-- LSP pulled from https://github.com/ecosse3/nvim/blob/lua/vim-plug/plugins.vim
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'hrsh7th/nvim-compe'")
-- Plug 'prabirshrestha/async.vim'
-- Plug 'prabirshrestha/vim-lsp'
-- Plug 'thomasfaingnaert/vim-lsp-snippets'
-- Plug 'thomasfaingnaert/vim-lsp-ultisnips'
vim.cmd("Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }")
vim.cmd("Plug 'onsails/lspkind-nvim'")
-- Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }

-- Telescope
vim.cmd("Plug 'nvim-lua/popup.nvim'")
vim.cmd("Plug 'nvim-lua/plenary.nvim'")
vim.cmd("Plug 'nvim-telescope/telescope.nvim'")


vim.cmd("call plug#end()")
