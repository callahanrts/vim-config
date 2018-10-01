" --------------------------------------------------
" VIMRC Configurations
" --------------------------------------------------

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

set encoding=utf-8

" Set application settings for neovim
source ~/.config/nvim/configs/application.vim

" Packages that should be managed by neovim Plugged
source ~/.config/nvim/configs/packages.vim

" Source all package configurations
for f in split(glob('~/.config/nvim/configs/plugins/*.vim'), '\n')
  exe 'source' f
endfor

" Include keybindings
source ~/.config/nvim/configs/keybindings.vim

" Override vim-one after the colorscheme is changed
command! OneOverride source ~/.config/nvim/configs/one_override.vim
autocmd ColorScheme * OneOverride

" Include neovim gui settings
source ~/.config/nvim/configs/gui.vim

