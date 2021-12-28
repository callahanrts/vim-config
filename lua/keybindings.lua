-- Remap escape to ctrl-c.
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc><Esc>', { noremap = true })

-- Open...
vim.api.nvim_set_keymap('n', '<leader>op', ':NvimTreeToggle<cr>', {})
-- Terminal
vim.api.nvim_set_keymap('n', '<leader>ot', ':split<CR><C-w>j :term<CR>', { noremap = true })
-- Github
vim.api.nvim_set_keymap('n', '<leader>og', ':.Gbrowse<cr>', { noremap = true })

-- Terminal mode bindings
vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-o>', '<C-\\><C-n>:q<cr>', { noremap = true })

-- Save files faster
vim.api.nvim_set_keymap('n', '<leader>s', ':w<cr>', {})

-- Tab Bindings
vim.api.nvim_set_keymap('n', '<c-t>n', ':tabnew<cr>', {})
vim.api.nvim_set_keymap('n', '<c-t>x', ':tabclose<cr>', {})

-- Clear / search
vim.api.nvim_set_keymap('n', '<leader>/', ':nohlsearch<cr>', {})

-- Center search result when searching
vim.api.nvim_set_keymap('n', 'n', 'nzz', {})
vim.api.nvim_set_keymap('n', 'N', 'Nzz', {})
vim.api.nvim_set_keymap('n', '*', '*zz', {})
vim.api.nvim_set_keymap('n', '#', '#zz', {})
vim.api.nvim_set_keymap('n', 'g*', 'g*zz', {})
vim.api.nvim_set_keymap('n', 'g#', 'g#zz', {})

-- Backspace swap window with latest buffer
vim.api.nvim_set_keymap('n', '<bs>', '<C-^>', {})

-- Tabularize Bindings
vim.api.nvim_set_keymap('v', '<leader>a', ':Tabularize /', {})

-- Toggle background color (light and dark theme)
vim.api.nvim_set_keymap('n', '<leader>tt', ':let &background = ( &background == "dark"? "light" : "dark" )<CR>', {})

-- Movement
vim.cmd("let g:BASH_Ctrl_j = 'off'")

vim.api.nvim_set_keymap('', '<C-n>', '}', {})
vim.api.nvim_set_keymap('', '<C-p>', '{', {})

-- Git commands
vim.api.nvim_set_keymap('n', '<leader>gc', ':Git commit<cr>', {})
vim.api.nvim_set_keymap('n', '<leader>gs', ':Git<cr>', {})

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
