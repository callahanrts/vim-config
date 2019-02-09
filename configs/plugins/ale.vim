let b:ale_linters_ignore = ['tsserver']
let g:ale_linters = {'javascript': ['eslint', 'flow']}
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier']
\}

let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5'
let g:ale_fix_on_save = 1
