
" ==============================================================================================
" Graphical Vim Settings
" ==============================================================================================

" Text Settings
" colorscheme apprentice  "http://www.vimninjas.com/2012/08/26/10-vim-color-schemes-you-need-to-own/

colorscheme lucius
LuciusDarkLowContrast
command! Light execute "LuciusLight"
command! Dark execute "LuciusDarkLowContrast"

"set guifont=Inconsolata-g\ for\ Powerline:h12  " Favorite font, 12pt


" Tmux cursor shapes for vim
" if exists('$ITERM_PROFILE')
"   set mouse=a
"   if exists('$TMUX')
"     let &t_SI = "\<Esc>[3 q"
"     let &t_EI = "\<Esc>[0 q"
"   else
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"   endif
" end

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

" faster escape in terminal nvim
" if ! has('gui_running')
"     set ttimeoutlen=10
"     augroup FastEscape
"         autocmd!
"         au InsertEnter * set timeoutlen=0
"         au InsertLeave * set timeoutlen=1000
"     augroup END
" endif

if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
