
vim.cmd("nnoremap <silent> <leader> :WhichKey '<space>'<CR>")
vim.cmd("autocmd! User vim-which-key call which_key#register('<space>', 'g:which_key_map')")

vim.g.which_key_map = {
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
