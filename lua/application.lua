vim.cmd("filetype off")                        -- required!
vim.cmd("set encoding=utf8")
vim.cmd("set nocompatible")                    -- Be iMproved
vim.cmd("set number")                          -- Set line numbers
vim.cmd("set autoread")                        -- Automatically reload changes if detected
vim.cmd("set ruler")                           -- Location in status line
vim.cmd("set laststatus=2")                    -- Always display the status line
vim.cmd("set scrolloff=3")                     -- Keep 3 lines below and above the cursor
vim.cmd("set noshowmode")                      -- Don't show default insert (handled by lightline)
vim.cmd("set foldmethod=marker")               -- Use markers for folding
vim.cmd("set undofile")                        -- Maintain undo history between sessions
vim.cmd("set undodir=~/.config/nvim/undodir")         -- Set directory for undo files
vim.cmd("let mapleader=' '")                   -- Change leader key to space

-- Turn off noisy shit
vim.cmd('set visualbell')
vim.cmd('set t_vb="')
vim.cmd('set re=1')

-- Word Wrap Configs
vim.cmd("set nowrap")                          -- Enable "visual" wrapping (nowrap turns off text wrapping)

-- Whitespace Settings
vim.cmd("set tabstop=2")                       -- Number of visual spaces per tab
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")                   -- Number of spaces in tab when editing
vim.cmd("set expandtab")                       -- Convert all tabs to spaces
vim.cmd("set list listchars=tab:\\ \\ ,trail:·") -- Show trailing whitespace
vim.cmd("set fileformats+=dos")                -- Stop EOLs from complicating diffs

-- Searching
vim.cmd("set hlsearch")                        -- Highlight all matching search pattern
vim.cmd("set incsearch")                       -- Show results as you're typing
vim.cmd("set ignorecase")
vim.cmd("set smartcase")

-- Turn off line numbers in terminal mode
vim.cmd("au TermOpen * setlocal nonumber norelativenumber")
vim.cmd("au TermOpen * :set winhighlight=Normal:ColorColumn")

if vim.fn.has('unix') then
  vim.cmd("set clipboard=unnamedplus")         -- Share clipboard with macOS
else
  vim.cmd("set clipboard=unnamed")             -- Share clipboard with macOS
end

-- Change backup directory so git doesn't get cluttered
vim.cmd("silent !mkdir ~/.config/nvim/backup > /dev/null 2>&1")
vim.cmd("set backupdir=~/.config/nvim/backup")

if vim.fn.has('gui_macvim') then
  vim.cmd("set directory=$HOME/.vim/swapfiles//")

  vim.cmd("set clipboard=unnamed")             -- Share clipboard with macOS

  -- Show a little bar for tab completion of commands
  vim.cmd("set wildmenu")
  vim.cmd("set wildmode=full")
end

-- Auocommands
vim.cmd("autocmd VimResized * wincmd =")       -- Automatically resize splits to equal sizes when vim is resized
vim.cmd("autocmd FileType markdown set spell")
vim.cmd("autocmd BufWritePre * :%s/\\s\\+$//e")-- Remove trailing whitespace on save

-- Set filetype for odd file extensions
-- au BufRead,BufNewFile *.raml set ft=yaml
-- autocmd BufRead,BufNewFile *.es6 *.es setfiletype javascript
