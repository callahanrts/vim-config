
vim.cmd("nnoremap <silent> <leader> :WhichKey '<space>'<CR>")
vim.cmd("autocmd! User vim-which-key call which_key#register('<space>', 'g:which_key_map')")

-- " Leader Key Maps
--
-- " Timeout
local g = vim.g
g.which_key_timeout = 100
vim.cmd("let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'} ")

-- Map leader to which_key
vim.cmd("nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>")
vim.cmd("vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>")

-- let g:which_key_map =  {}
g.which_key_sep = '→'

-- Not a fan of floating windows for this
g.which_key_use_floating_win = 0
g.which_key_max_size = 0

-- Hide status line
vim.cmd([[
  autocmd! FileType which_key
  autocmd  FileType which_key set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
]])

g.which_key_map = {
  s = 'save-file',

  t = {
    name = "toggle+",
    t = 'toggle-theme'
  },

  o = {
    name = "open+",
    t = "terminal",
    p = "project-tree",
    d = "tag-definitions",
    g = "github-browse"
  },

  p = 'prettier',
  a = "tabularize",
  ['/'] = 'clear-search',
}
