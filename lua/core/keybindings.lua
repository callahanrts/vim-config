-- Remap escape to ctrl-c.
-- inoremap <C-c> <Esc><Esc>
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc><Esc>', { noremap = true })

-- Open...
vim.api.nvim_set_keymap('n', '<leader>op', ':NvimTreeToggle<cr>', {})
-- Terminal
-- nnoremap <Leader>ot :split<CR><C-w>j :term<CR>
vim.api.nvim_set_keymap('n', '<leader>ot', ':split<CR><C-w>j :term<CR>', { noremap = true })
-- Github
-- nnoremap <Leader>og :.Gbrowse<CR>
vim.api.nvim_set_keymap('n', '<leader>og', ':.Gbrowse<cr>', { noremap = true })

-- Terminal mode bindings
-- tnoremap <esc> <C-\><C-n>
vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', { noremap = true })
-- tnoremap <C-o> <C-\><C-n>:q<CR>
vim.api.nvim_set_keymap('t', '<C-o>', '<C-\\><C-n>:q<cr>', { noremap = true })

-- Save files faster
-- map <leader>s :w<CR>
vim.api.nvim_set_keymap('n', '<leader>s', ':w<cr>', {})

-- Tab Bindings
-- nmap <c-t>n :tabnew<CR>
vim.api.nvim_set_keymap('n', '<c-t>n', ':tabnew<cr>', {})
-- nmap <c-t>x :tabclose<CR>
vim.api.nvim_set_keymap('n', '<c-t>x', ':tabclose<cr>', {})

-- File / Code searching
-- nmap <c-x>b :Buffers<CR>
-- nmap <c-x><c-f> :cd ~/

-- Clear / search
-- nmap <Leader>/ :nohlsearch<CR>
vim.api.nvim_set_keymap('n', '<leader>/', ':nohlsearch<cr>', {})

-- Center search result when searching
-- nnoremap n nzz
vim.api.nvim_set_keymap('n', 'n', 'nzz', {})
-- nnoremap N Nzz
vim.api.nvim_set_keymap('n', 'N', 'Nzz', {})
-- nnoremap * *zz
vim.api.nvim_set_keymap('n', '*', '*zz', {})
-- nnoremap # #zz
vim.api.nvim_set_keymap('n', '#', '#zz', {})
-- nnoremap g* g*zz
vim.api.nvim_set_keymap('n', 'g*', 'g*zz', {})
-- nnoremap g# g#zz
vim.api.nvim_set_keymap('n', 'g#', 'g#zz', {})

-- Backspace swap window with latest buffer
-- nnoremap <BS> <C-^>
vim.api.nvim_set_keymap('n', '<bs>', '<C-^>', {})

-- Tabularize Bindings
-- map <Leader>a :Tabularize /
vim.api.nvim_set_keymap('v', '<leader>a', ':Tabularize /', {})

-- Toggle background color (light and dark theme)
-- map <Leader>tt :let &background = ( &background == "dark"? "light" : "dark" )<CR>
vim.api.nvim_set_keymap('n', '<leader>tt', ':let &background = ( &background == "dark"? "light" : "dark" )<CR>', {})

-- Show syntax highlighting groups for word under cursor
-- NOTE: This doesn't seem to work anymore
-- nmap <C-S-P> :call <SID>SynStack()<CR>
-- function! <SID>SynStack()
--   if !exists("*synstack")
--     return
--   endif
--   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
-- endfunc

-- Movement
vim.cmd("let g:BASH_Ctrl_j = 'off'")
-- noremap <C-n> }
vim.api.nvim_set_keymap('', '<C-n>', '}', {})
-- map <C-p> {
vim.api.nvim_set_keymap('', '<C-p>', '{', {})

-- TODO: Enable this. It's kind of nice
-- Zoom / Restore window.
-- vim.cmd([[
-- function! s:ZoomToggle() abort
--   if exists('t:zoomed') && t:zoomed
--     execute t:zoom_winrestcmd
--     let t:zoomed = 0
--   else
--     let t:zoom_winrestcmd = winrestcmd()
--     resize
--     vertical resize
--     let t:zoomed = 1
--   endif
-- endfunction
-- command! ZoomToggle call s:ZoomToggle()
-- ]])
-- nnoremap <leader>z :ZoomToggle<CR>
