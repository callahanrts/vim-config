" --------------------------------------------------
" Graphical Vim Settings
" --------------------------------------------------

set fillchars+=vert:⮠
set cursorline
set background=dark
let g:one_allow_italics = 1

colorscheme one

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
  " Disable BCE so Vim paints every cell explicitly; prevents colorcolumn
  " gaps from picking up wrong background color after scroll
  set t_ut=
endif


" Tmux cursor shapes for vim
if exists('$ITERM_PROFILE')
  set mouse=a
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

" Terminal + Tmux pasting
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" Set timeout to one second for normal commands and 0 for escape
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif


if exists('+colorcolumn')
  function! s:SetupColorColumns() abort
    " Darken cols 1-79 and 81-99, leaving 80 and 100 as natural-background guides
    execute "set colorcolumn=" . join(range(1,79), ',') . ',' . join(range(81,99), ',')
  endfunction

  augroup ColorColumnSetup
    autocmd!
    autocmd VimEnter,ColorScheme * call s:SetupColorColumns()
  augroup END
endif


" MacVim Settings
if has('gui_macvim')
  set guioptions=
  set guifont=Mezlo\ M:h12
endif
