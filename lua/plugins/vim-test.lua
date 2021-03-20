-- let test#strategy = "vimux" " For running with nearest tmux split
vim.cmd('let test#strategy = "neovim"') -- Run with :terminal in neovim
vim.cmd('let test#preserve_screen = 0')
vim.cmd("let test#ruby#rspec#executable = 'spec'")

vim.api.nvim_set_keymap("n", 't<C-n>', ':TestNearest<CR>', {silent = true})
vim.api.nvim_set_keymap("n", 't<C-f>', ':TestFile<CR>', {silent = true})
vim.api.nvim_set_keymap("n", 't<C-s>', ':TestSuite<CR>', {silent = true})
vim.api.nvim_set_keymap("n", 't<C-l>', ':TestLast<CR>', {silent = true})
vim.api.nvim_set_keymap("n", 't<C-g>', ':TestVisit<CR>', {silent = true})
