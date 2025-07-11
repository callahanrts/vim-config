" --------------------------------------------------
" Vim Application Settings
" --------------------------------------------------

set nocompatible                    " Be iMproved
filetype off                        " required!
set number                          " Set line numbers
set autoread                        " Automatically reload changes if detected
set ruler                           " Location in status line
set laststatus=2                    " Always display the status line
set scrolloff=3                     " Keep 3 lines below and above the cursor
set noshowmode                      " Don't show default insert (handled by lightline)
set foldmethod=marker               " Use markers for folding
set undofile                        " Maintain undo history between sessions
set undodir=~/.nvim/undodir         " Set directory for undo files
let mapleader=" "                   " Change leader key to space

" Turn off line numbers in terminal mod"
" NOTE: These are causing problems
" au TerminalOpen * setlocal nonumber norelativenumber
" au TerminalOpen * :set winhighlight=Normal:ColorColumn

if has('unix')
  set clipboard=unnamed             " Share clipboard with macOS
else
  set clipboard=unnamedplus         " Share clipboard with linux
endif

autocmd VimResized * wincmd =       " Automatically resize splits to equal sizes when vim is resized

autocmd FileType markdown set spell

"if !has('gui_running')
  set encoding=utf8                 " This can't be set after start up
"endif

" Turn off noisy shit
set visualbell
set t_vb="
set re=1

" Word Wrap Configs
set nowrap                          " Enable "visual" wrapping (nowrap turns off text wrapping)

" Whitespace Settings
set tabstop=2                       " Number of visual spaces per tab
set shiftwidth=2
set softtabstop=2                   " Number of spaces in tab when editing
set expandtab                       " Convert all tabs to spaces
set list listchars=tab:\ \ ,trail:· " Show trailing whitespace
set fileformats+=dos                " Stop EOLs from complicating diffs
autocmd BufWritePre * :%s/\s\+$//e  " Remove trailing whitespace on save

" Searching
set hlsearch                        " Highlight all matching search pattern
set incsearch                       " Show results as you're typing
set ignorecase
set smartcase

" Set filetype for odd file extensions
au BufRead,BufNewFile *.coffee    set filetype=coffee " associate *.js.coffee with coffee filetype
au BufNewFile,BufReadPost *.jade  set filetype=jade
au BufNewFile,BufReadPost *.styl  set filetype=stylus
au BufRead,BufNewFile *.raml set ft=yaml
autocmd BufRead,BufNewFile *.es6 *.es setfiletype javascript

" Change backup directory so git doesn't get cluttered
silent !mkdir ~/.vim/backup > /dev/null 2>&1
set backupdir=~/.vim/backup


if has('gui_macvim')
  set directory=$HOME/.vim/swapfiles//

  set clipboard=unnamed             " Share clipboard with macOS

  " Show a little bar for tab completion of commands
  set wildmenu
  set wildmode=full
endif
