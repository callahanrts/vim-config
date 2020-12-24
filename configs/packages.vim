Plug 'Raimondi/delimitMate'          " Bracket completion
Plug 'airblade/vim-gitgutter'        " See git status in the gutter
Plug 'scrooloose/nerdtree'           " Nice directory view
Plug 'tpope/vim-surround'            " Surrounding text with stuff
Plug 'gorkunov/smartpairs.vim'       " Select pairs of things (eg. vi', vi<)
Plug 'tpope/vim-fugitive'            " Github shit
  Plug 'tpope/vim-rhubarb'           " Fugitive is the Git, rhubarb is the hub
Plug 'godlygeek/tabular'             " Align text
Plug 'vim-scripts/repeat.vim'        " Repeat plugin commands (not just native) using .
Plug 'tpope/vim-commentary'          " Comment stuff
Plug 'vim-scripts/largefile'         " Optimize opening giant files
Plug 'janko-m/vim-test'              " Run tests
Plug 'tpope/vim-eunuch'              " Run unix-y commands from vim
Plug 'knubie/vim-kitty-navigator'    " Seamless kitty splits
Plug 'SirVer/ultisnips'              " Snippets
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'              " Fuzzy search

" Completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }

" Select html attributes with vix
Plug 'kana/vim-textobj-user' | Plug 'whatyouhide/vim-textobj-xmlattr'

" Completion
" Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" For looks
Plug 'rakr/vim-one' " One Dark theme
Plug 'vim-airline/vim-airline'

" Language Support
Plug 'vim-ruby/vim-ruby',          { 'for': 'rb' }
Plug 'cakebaker/scss-syntax.vim',  { 'for': 'scss' }
Plug 'JulesWang/css.vim',          { 'for': 'css' }
Plug 'kchmck/vim-coffee-script',   { 'for': 'coffee' }
Plug 'tpope/vim-haml',             { 'for': 'haml' }
Plug 'posva/vim-vue'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'plasticboy/vim-markdown'
Plug 'ElmCast/elm-vim'

" Javascript
Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
