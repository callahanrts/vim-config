" Unbind the cursor keys in insert, normal and visual modes.
"for prefix in ['i', 'n', 'v']
"  for key in ['<C-[>', '<Up>', '<Down>', '<Left>', '<Right>']
"    exe prefix . "noremap " . key . " <Nop>"
"  endfor
"endfor

" Remap escape to ctrl-c.
map <C-c> <Esc>

" C-c (2x) for C-c
map <C-c><C-c> <C-c>

" Toggle nerd tree
map <Leader>d :NERDTreeToggle<CR>

" Application Bindings
map <leader>s :w<CR>

" Tab Bindings
nmap <c-t>n :tabnew<CR>
nmap <c-t>x :tabclose<CR>

" Unite keybindings
" map <c-x>b :Unite buffer -direction=botright<CR>i
map <c-x>b Buffers
" map <c-x>f :Unite file_rec/async -start-insert -no-split<CR>
map <c-x>f :FZF<CR>
map <c-x><c-f> :cd ~/
"map <c-x>a :Unite -no-split grep:.<CR>
map <c-x>a :Ag<space>
map <c-x>%:Unite -no-split grep:%<CR>

" Clear / search
nmap <Leader>/ :nohlsearch<CR>

" Center search result when searching
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <BS> <C-^>

" Fugitive Bindings
nnoremap <Leader>gb :.Gbrowse<CR>

" Tabularize Bindings
map <Leader>a :Tabularize /

" Terminal mode bindings
tnoremap <esc> <C-\><C-n>
tnoremap <C-o> <C-\><C-n>:q<CR>
nnoremap <C-s> :split<CR><C-w>j :term<CR>

