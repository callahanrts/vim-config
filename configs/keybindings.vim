
" Remap escape to ctrl-c.
inoremap <C-c> <Esc><Esc>

" Open...
" nerd tree
nmap <Leader>op :NERDTreeToggle<CR>

" Terminal mode bindings
tnoremap <esc> <C-\><C-n>
tnoremap <C-o> <C-\><C-n>:q<CR>
nnoremap <Leader>ot :split<CR><C-w>j :term<CR>

" Save files faster
map <leader>s :w<CR>

" Tab Bindings
nmap <c-t>n :tabnew<CR>
nmap <c-t>x :tabclose<CR>

" File / Code searching
nmap <c-x>b :Buffers<CR>
nmap <c-x>f :FZF<CR>
nmap <c-x>a :Ag<space>
nmap <c-x><c-f> :cd ~/

" Clear / search
nmap <Leader>/ :nohlsearch<CR>

" Center search result when searching
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Backspace swap window with latest buffer
nnoremap <BS> <C-^>

" Fugitive Bindings
nnoremap <Leader>gb :.Gbrowse<CR>

" Tabularize Bindings
map <Leader>a :Tabularize /


" Movement
let g:BASH_Ctrl_j = 'off'
noremap <C-j> }
noremap <C-k> {


" --------------------------
" Leader t
nnoremap <leader>ts :ALEToggle<CR>

" Toggle background color (light and dark theme)
map <Leader>tt :let &background = ( &background == "dark"? "light" : "dark" )<CR>
" --------------------------

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
