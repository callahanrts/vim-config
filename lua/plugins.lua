-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'windwp/nvim-autopairs'      -- Bracket completion
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use 'kyazdani42/nvim-tree.lua'   -- File browser
  use 'tpope/vim-surround'         -- Surrounding text with stuff
  use 'gorkunov/smartpairs.vim'    -- Select pairs of things (eg. vi', vi<)
  use 'tpope/vim-fugitive'         -- Github shit
  use 'tpope/vim-rhubarb'          -- Fugitive is the Git, rhubarb is the hub
  use 'godlygeek/tabular'          -- Align text
  use 'vim-scripts/repeat.vim'     -- Repeat plugin commands (not just native) using .
  use 'tpope/vim-commentary'       -- Comment stuff
  use 'knubie/vim-kitty-navigator' -- Seamless kitty splits
  use 'preservim/tagbar'           -- Tagbar
  use 'andymass/vim-matchup'       -- Improve %
  use 'metakirby5/codi.vim'        -- Scratchpad
  use 'sindrets/diffview.nvim'

  -- Uncomment this if you need to install fzf. It throws an error on the daily
  use { 'junegunn/fzf', { run = ":call fzf#install()" } }
  use 'junegunn/fzf.vim'

  -- For looks
  use 'tjdevries/colorbuddy.vim'
  use 'Th3Whit3Wolf/onebuddy'
  -- use 'navarasu/onedark.nvim'
  use 'kyazdani42/nvim-web-devicons' -- Recommended (for coloured icons)
  use 'RRethy/vim-illuminate'        -- Highlight token under cursor
  use { 'lukas-reineke/indent-blankline.nvim' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'nvim-treesitter/nvim-treesitter-refactor'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe' -- Completion
  use 'ray-x/lsp_signature.nvim' -- Signatures in completion
  use { 'glepnir/lspsaga.nvim', branch = 'main' }
  use 'onsails/lspkind-nvim'
  -- Plug 'thomasfaingnaert/vim-lsp-snippets'
  -- Plug 'thomasfaingnaert/vim-lsp-ultisnips'

  -- Show menu for leader commands
  use 'liuchengxu/vim-which-key'

  use {
    'prettier/vim-prettier',
    run = 'yarn install', -- post install (yarn install

    -- Load plugin only for editing supported files
    ft = {
      'javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql',
      'markdown', 'vue', 'yaml', 'html'
    }
  }

  -- Select html attributes with vix
  use {
    'kana/vim-textobj-user',
    requires = { 'whatyouhide/vim-textobj-xmlattr' }
  }

  -- Lua
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }

  use 'rafcamlet/nvim-luapad'
end)
