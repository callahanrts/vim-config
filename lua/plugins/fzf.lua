vim.g.fzf_action = {
  ['ctrl-t'] = 'tab split',
  ['ctrl-i'] = 'split',
  ['ctrl-s'] = 'vsplit'
}

-- vim.cmd([[
-- function! s:fzf_statusline()
--   " Override statusline as you like
--   highlight fzf1 ctermfg=161 ctermbg=251
--   highlight fzf2 ctermfg=23 ctermbg=251
--   highlight fzf3 ctermfg=237 ctermbg=251
--   setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
-- endfunction
-- ]])

-- vim.cmd([[
-- autocmd! User FzfStatusLine call <SID>fzf_statusline()
-- ]])

vim.cmd([[
" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)
]])


vim.api.nvim_set_keymap('n', '<c-x>b', ':Buffers<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>.', ':Files<cr>', {})
vim.api.nvim_set_keymap('n', '<c-x>a', ':Rg<space>', {})
