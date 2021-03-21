
vim.cmd("nnoremap <silent> <leader> :WhichKey '<space>'<CR>")
vim.cmd("autocmd! User vim-which-key call which_key#register('<space>', 'g:which_key_map')")

-- local g = vim.g
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

-- vim.cmd([[
-- let g:which_key_map =  {}
-- let g:which_key_map.s = 'Save file'
-- ]])

-- vim.cmd([[
-- let g:which_key_map['w'] = {
--       \ 'name' : '+windows' ,
--       \ 'w' : ['<C-W>w'     , 'other-window']          ,
--       \ 'd' : ['<C-W>c'     , 'delete-window']         ,
--       \ '-' : ['<C-W>s'     , 'split-window-below']    ,
--       \ '|' : ['<C-W>v'     , 'split-window-right']    ,
--       \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
--       \ 'h' : ['<C-W>h'     , 'window-left']           ,
--       \ 'j' : ['<C-W>j'     , 'window-below']          ,
--       \ 'l' : ['<C-W>l'     , 'window-right']          ,
--       \ 'k' : ['<C-W>k'     , 'window-up']             ,
--       \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
--       \ 'J' : [':resize +5'  , 'expand-window-below']   ,
--       \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
--       \ 'K' : [':resize -5'  , 'expand-window-up']      ,
--       \ '=' : ['<C-W>='     , 'balance-window']        ,
--       \ 's' : ['<C-W>s'     , 'split-window-below']    ,
--       \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
--       \ '?' : ['Windows'    , 'fzf-window']            ,
--       \ }
-- ]])
