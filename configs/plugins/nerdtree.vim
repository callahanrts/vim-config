
" ==============================================================================================
" NERDTree configuration
" ==============================================================================================
let g:NERDTreeIgnore = ['\.pyc$', '\.rbc$', '\~$']
let g:NERDTreeChDirMode = 2

" Start with bookmarks displayed
let g:NERDTreeShowBookmarks = 0

" Disable display of '?' text and 'Bookmarks' label.
let g:NERDTreeMinimalUI=1

" Increase the size of nerdtree a bit
let g:NERDTreeWinSize=36

" Use some nicer looking arrows
let g:NERDTreeDirArrowExpandable = '➙'
let g:NERDTreeDirArrowCollapsible = '➔'

" Let <Leader><Leader> (^#) return from NERDTree window.
let g:NERDTreeCreatePrefix='silent keepalt keepjumps'

