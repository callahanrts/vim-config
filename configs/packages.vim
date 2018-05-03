
" PLUGGED STUFF
call plug#begin('~/.nvim/plugged')

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
Plug 'majutsushi/tagbar'                      " Visual representation of classes
Plug 'vimwiki/vimwiki'                        " VimWiki
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                       " Fuzzy search
Plug 'tpope/vim-commentary'                   " Comment stuff
Plug 'tpope/vim-vinegar'                      " netrw replacement
Plug 'sbdchd/neoformat'                       " Format code js-beautify etc
Plug 'w0rp/ale'                               " Asynchronous Lint Engine
Plug 'ahw/vim-hooks'                          " Easy Vim Hooks
Plug 'jceb/vim-orgmode'                       " Org Mode

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
Plug 'pangloss/vim-javascript'
Plug 'fatih/vim-go',               { 'for': 'go' }
Plug 'vim-scripts/lua.vim',        { 'for': 'lua' }
Plug 'elixir-editors/vim-elixir'
Plug 'rust-lang/rust.vim'
  Plug 'vim-scripts/vim-misc'
Plug 'leafgarland/typescript-vim'
Plug 'ElmCast/elm-vim'
Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'
Plug 'rhysd/vim-crystal'

call plug#end()
