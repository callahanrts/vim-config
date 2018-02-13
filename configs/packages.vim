
" PLUGGED STUFF
call plug#begin('~/.nvim/plugged')

Plug 'Raimondi/delimitMate'                   " Bracket completion
Plug 'airblade/vim-gitgutter'                 " See git status in the gutter
Plug 'scrooloose/nerdtree'                    " Nice directory view
Plug 'tpope/vim-surround'                     " Surrounding text with stuff
Plug 'gorkunov/smartpairs.vim'                " Select pairs of things (eg. vi', vi<)
" Plug 'suan/vim-instant-markdown'              " Realtime markdown editing
Plug 'tpope/vim-fugitive'                     " Github shit
  Plug 'tpope/vim-rhubarb'                    " Fugitive is the Git, rhubarb is the hub
Plug 'godlygeek/tabular'                      " Align text
Plug 'vim-scripts/repeat.vim'                 " Repeat plugin commands (not just native) using .
Plug 'vim-scripts/AdvancedSorters'            " Sort functions/paragraphs/visual blocks/etc
  Plug 'vim-scripts/ingo-library'             " AdvancedSorters requires it
Plug 'majutsushi/tagbar'                      " Visual representation of classes
Plug 'SirVer/ultisnips'                       " Snippets
  Plug 'honza/vim-snippets'                   " Snippets are separated from the engine.
Plug 'vimwiki/vimwiki'                        " VimWiki
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'                       " Fuzzy search
" Plug 'benekastah/neomake'                     " Syntax checking
Plug 'tpope/vim-commentary'                   " Comment stuff
Plug 'tpope/vim-vinegar'                      " netrw replacement

Plug 'sbdchd/neoformat' " Format code js-beautify etc
" Plug 'scrooloose/syntastic'                            " Syntax Checking for vim
Plug 'w0rp/ale' " Asynchronous Lint Engine
Plug 'ahw/vim-hooks'                          " Easy Vim Hooks
Plug 'jceb/vim-orgmode'                       " Org Mode

" Autocompletion
" Plug 'Valloric/YouCompleteMe'                 " Tab completion engine
  " Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
  " Plug 'ternjs/tern_for_vim'                    " Javascript code analysis

" For looks
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
" Plug 'lambdatoast/elm.vim'
Plug 'ElmCast/elm-vim'
Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'
Plug 'rhysd/vim-crystal'

" From vimcolors.com
Plug 'jonathanfilip/vim-lucius'
Plug 'rakr/vim-one'

call plug#end()
