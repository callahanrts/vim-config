
let g:airline_powerline_fonts = 1

" Enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1 " Show splits per tab
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1 " Always show tabs
let g:airline#extensions#hunks#enabled = 0 " Don't show changed hunks (eg. +13 ~4 -7)

let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_c = '%t'

function! SessionName()
  let s = ""
  if exists(':Obsession')
      if exists('v:this_session') && v:this_session != ''
          let s:obsession_string = v:this_session
          let s:obsession_parts = split(s:obsession_string, '/')
          let s:obsession_filename = s:obsession_parts[-1]
          let s = s:obsession_filename . ' '
      endif
  endif
  return s
endfunction

"let g:airline_section_z = '%l:%c'
let g:airline_section_z = airline#section#create(['%{SessionName()}', '%l:%c'])

let g:airline_theme='one'


" Attempting to increase performance
let g:airline_highlighting_cache = 1
let g:airline_extensions = ['branch', 'tabline', 'ale']
