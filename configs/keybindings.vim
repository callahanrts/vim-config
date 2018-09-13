
" Remap escape to ctrl-c.
inoremap <C-c> <Esc><Esc>

" Toggle nerd tree
nmap <Leader>d :NERDTreeToggle<CR>
" nmap <Leader>d :VimFilerSplit -winwidth=35 -columns="type"<CR>
" nmap <Leader>d :VimFiler -explorer -explorer-columns="" -parent=1 -auto-cd=1 -status=0<CR>

nmap <Leader>e :Tagbar<CR>

" Application Bindings
map <leader>s :w<CR>

" Tab Bindings
nmap <c-t>n :tabnew<CR>
nmap <c-t>x :tabclose<CR>

" Unite keybindings
nmap <c-x>b :Buffers<CR>
nmap <c-x>f :FZF<CR>
nmap <c-x><c-f> :cd ~/
nmap <c-x>a :Ag<space>

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

" Terminal mode bindings
tnoremap <esc> <C-\><C-n>
tnoremap <C-o> <C-\><C-n>:q<CR>
nnoremap <C-s> :split<CR><C-w>j :term<CR>

" Movement
let g:BASH_Ctrl_j = 'off'
" "let g:BASH_Ctrl_k = 'off'
noremap <C-j> }
noremap <C-k> {

"----------------------------------
" Toggle settings shortcuts
" Toggle Syntastic
nnoremap <leader>ts :ALEToggle<CR>
"----------------------------------

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
