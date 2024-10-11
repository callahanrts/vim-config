set title
let &titlestring='%t - nvim'

let g:kitty_navigator_listening_on_address='unix:/tmp/mykitty'
let g:kitty_navigator_no_mappings = 1

nmap <silent> <C-h> :KittyNavigateLeft<cr>
nmap <silent> <C-j> :KittyNavigateDown<cr>
nmap <silent> <C-k> :KittyNavigateUp<cr>
nmap <silent> <C-l> :KittyNavigateRight<cr>
