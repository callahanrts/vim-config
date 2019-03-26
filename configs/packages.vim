Plug 'Raimondi/delimitMate'                   " Bracket completion
Plug 'airblade/vim-gitgutter'                 " See git status in the gutter
Plug 'scrooloose/nerdtree'                    " Nice directory view
Plug 'tpope/vim-surround'                     " Surrounding text with stuff
Plug 'gorkunov/smartpairs.vim'                " Select pairs of things (eg. vi', vi<)
Plug 'tpope/vim-fugitive'                     " Github shit
  Plug 'tpope/vim-rhubarb'                    " Fugitive is the Git, rhubarb is the hub
Plug 'godlygeek/tabular'                      " Align text
Plug 'vim-scripts/repeat.vim'                 " Repeat plugin commands (not just native) using .
Plug 'vim-scripts/AdvancedSorters'            " Sort functions/paragraphs/visual blocks/etc
  Plug 'vim-scripts/ingo-library'             " AdvancedSorters requires it
Plug 'vimwiki/vimwiki'                        " VimWiki
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                       " Fuzzy search
Plug 'tpope/vim-commentary'                   " Comment stuff
Plug 'tpope/vim-eunuch'                       " Vim support for some unix shell commands
Plug 'vim-scripts/largefile'                  " Optimize opening giant files
Plug 'w0rp/ale'                               " Asynchronous Lint Engine
" Plug 'ahw/vim-hooks'                          " Easy Vim Hooks
Plug 'jceb/vim-orgmode'                       " Org Mode
  Plug 'vim-scripts/utl.vim'
Plug 'janko-m/vim-test'
Plug 'benmills/vimux'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-eunuch'                       " Run unix-y commands from vim
" Select html attributes with vix
Plug 'kana/vim-textobj-user' | Plug 'whatyouhide/vim-textobj-xmlattr'
Plug 'christoomey/vim-tmux-navigator'         " Seamless split nav
Plug 'SirVer/ultisnips'                       " Snippets


" For looks
Plug 'rakr/vim-one'                           " One Dark theme
Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'

" Language Support
Plug 'vim-ruby/vim-ruby',          { 'for': 'rb' }
Plug 'cakebaker/scss-syntax.vim',  { 'for': 'scss' }
Plug 'JulesWang/css.vim',          { 'for': 'css' }
Plug 'kchmck/vim-coffee-script',   { 'for': 'coffee' }
Plug 'tpope/vim-haml',             { 'for': 'haml' }
Plug 'python-mode/python-mode',    { 'for': 'py' }
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/lua.vim',        { 'for': 'lua' }
Plug 'elixir-editors/vim-elixir'
Plug 'ElmCast/elm-vim'
Plug 'posva/vim-vue'
Plug 'digitaltoad/vim-pug'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
