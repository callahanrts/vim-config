vim.cmd("set title")
vim.cmd("let &titlestring='%t - nvim'")

vim.g.kitty_navigator_listening_on_address='unix:/tmp/mykitty'
vim.g.kitty_navigator_no_mappings = 1

vim.api.nvim_set_keymap('n', '<C-h>', ':KittyNavigateLeft<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':KittyNavigateDown<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':KittyNavigateUp<cr>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':KittyNavigateRight<cr>', { silent = true })
