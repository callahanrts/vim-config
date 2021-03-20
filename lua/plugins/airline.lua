vim.g.airline_powerline_fonts = 1

-- Enable tabline
vim.cmd("let g:airline#extensions#tabline#enabled = 1")
vim.cmd("let g:airline#extensions#tabline#show_splits = 0") -- Show splits per tab
vim.cmd("let g:airline#extensions#tabline#show_buffers = 1")
vim.cmd("let g:airline#extensions#tabline#show_tabs = 1") -- Always show tabs
vim.cmd("let g:airline#extensions#hunks#enabled = 0") -- Don't show changed hunks (eg. +13 ~4 -7)

vim.cmd("let g:airline#extensions#tabline#fnamemod = ':t'")
vim.g.airline_section_c = '%t'
vim.g.airline_section_z = '%l:%c'
vim.g.airline_theme='one'

-- Attempting to increase performance
vim.g.airline_highlighting_cache = 1
vim.g.airline_extensions = {'branch', 'tabline'}
