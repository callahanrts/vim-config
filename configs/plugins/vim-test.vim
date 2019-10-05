nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" let test#strategy = "vimux" " For running with nearest tmux split
let test#strategy = "neovim" " Run with :terminal in neovim
let test#preserve_screen = 0
let test#ruby#rspec#executable = 'spec'
