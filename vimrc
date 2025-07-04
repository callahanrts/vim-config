" --------------------------------------------------
" VIMRC Configurations
" --------------------------------------------------

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

set encoding=utf-8

" Set application settings for neovim
source ~/.config/vim/configs/application.vim

" PLUGGED STUFF
call plug#begin('~/.vim/plugged')
  " Packages that should be managed by neovim Plugged
  source ~/.config/vim/configs/packages.vim
call plug#end()

" Source all package configurations
for f in split(glob('~/.config/vim/configs/plugins/*.vim'), '\n')
  exe 'source' f
endfor

" Include keybindings
source ~/.config/vim/configs/keybindings.vim

" Override vim-one after the colorscheme is changed
command! OneOverride source ~/.config/vim/configs/one_override.vim
autocmd ColorScheme * OneOverride

" Include neovim gui settings
source ~/.config/vim/configs/gui.vim

set title
let &titlestring='%t - vim'

let g:kitty_navigator_listening_on_address='unix:/tmp/mykitty'
let g:kitty_navigator_no_mappings = 1

nnoremap <silent> ctrl-h :KittyNavigateLeft<cr>
nnoremap <silent> ctrl-h :KittyNavigateLeft<cr>
nnoremap <silent> ctrl-j :KittyNavigateDown<cr>
nnoremap <silent> ctrl-k :KittyNavigateUp<cr>
nnoremap <silent> ctrl-l :KittyNavigateRight<cr>
