set title
let &titlestring='%t - nvim'
let g:kitty_navigator_listening_on_address='unix:/tmp/mykitty'

let g:kitty_navigator_no_mappings = 1

nnoremap <silent> ctrl-h :KittyNavigateLeft<cr>
nnoremap <silent> ctrl-j :KittyNavigateDown<cr>
nnoremap <silent> ctrl-k :KittyNavigateUp<cr>
nnoremap <silent> ctrl-l :KittyNavigateRight<cr>
