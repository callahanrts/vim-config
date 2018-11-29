let g:vimwiki_list = [
      \  { 'path': '~/.config/nvim/vimwiki', 'path_html': '~/.config/nvim/vimwiki_html' }
      \]

let g:vimwiki_folding = 'expr'

autocmd BufWritePost *.wiki :silent Vimwiki2HTML
