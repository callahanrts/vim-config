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
  use 'andymass/vim-matchup'       -- Improve %
  use { 'neoclide/coc.nvim', branch = 'release' } -- LSP
  use { "folke/which-key.nvim" } -- Show menu for leader commands

  -- Select html attributes with vix
  use {
    'kana/vim-textobj-user',
    requires = { 'whatyouhide/vim-textobj-xmlattr' }
  }

  -- Searching
  use 'junegunn/fzf.vim'
  use { 'ibhagwan/fzf-lua',
    requires = {
      'vijaymarupudi/nvim-fzf',
      'kyazdani42/nvim-web-devicons'
    }
  }

  -- For looks
  -- use 'tjdevries/colorbuddy.vim'
  -- use 'Th3Whit3Wolf/onebuddy'
  use 'navarasu/onedark.nvim'
  use 'kyazdani42/nvim-web-devicons' -- Recommended (for coloured icons)
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Local
  use '~/.config/nvim/my_plugins/pageline.nvim'
end)
