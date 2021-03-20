-- require('lsp/servers')
-- require('lsp/lspkind')
-- require('lsp/lspsaga')

--TODO figure out why this don't work
vim.fn.sign_define("LspDiagnosticsSignError", {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})

vim.cmd('nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>')
vim.cmd('nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>')
vim.cmd('nnoremap <silent> ca :Lspsaga code_action<CR>')
vim.cmd('nnoremap <silent> K :Lspsaga hover_doc<CR>')
-- vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
-- TODO: These conflict with other bindings
-- vim.cmd('nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>')
-- vim.cmd('nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>')

-- scroll down hover doc or scroll in definition preview
vim.cmd('nnoremap <silent> <C-f> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>')
-- scroll up hover doc
vim.cmd('nnoremap <silent> <C-b> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>')


-- -- Show lsp finder
-- -- nnoremap <silent> gh :Lspsaga lsp_finder<CR>
-- vim.api.nvim_set_keymap('n', 'gh', ':Lspsaga lsp_finder<cr>', { noremap = true, silent = true })
--
-- -- Code actions
-- -- nnoremap <silent><leader>ca :Lspsaga code_action<CR>
-- vim.api.nvim_set_keymap('n', '<leader>ca', ':Lspsaga code_action<cr>', { noremap = true, silent = true })
--
-- -- vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
-- vim.api.nvim_set_keymap('v', 'gh', ':<C-U>Lspsaga range_code_action<cr>', { noremap = true, silent = true })
--
-- -- Show hover doc
-- -- nnoremap <silent>K :Lspsaga hover_doc<CR>
-- vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<cr>', { noremap = true, silent = true })
--
-- -- Show signature help
-- -- nnoremap <silent> gs :Lspsaga signature_help<CR>
-- vim.api.nvim_set_keymap('n', 'gs', ':Lspsaga signature_help<cr>', { noremap = true, silent = true })
--
-- -- Rename
-- -- nnoremap <silent>gr :Lspsaga rename<CR>
-- vim.api.nvim_set_keymap('n', 'gr', ':Lspsaga rename<cr>', { noremap = true, silent = true })
--
-- -- Preview definition
-- -- nnoremap <silent> gd :Lspsaga preview_definition<CR>
-- vim.api.nvim_set_keymap('n', 'gd', ':Lspsaga preview_definition<cr>', { noremap = true, silent = true })
--
-- -- Diagnostics
-- -- nnoremap <silent><leader>cd :Lspsaga show_line_diagnostics<CR>
-- -- nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
-- -- nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>
