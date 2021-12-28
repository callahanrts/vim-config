require('onedark').setup()

-- Set the ColorColumn a little darker than Normal
vim.cmd("highlight ColorColumn guibg=#21252b")

-- These are colors from my onedark override (rakr/vim-one)
-- vim.cmd("highlight VertSplit guifg=#3b4048")
-- vim.cmd("highlight Normal guibg=#2c323c")
-- vim.cmd("highlight NormalDark guibg=#21252c")
-- vim.cmd("highlight ColorColumn guibg=#282c34")
-- vim.cmd("highlight Folded guifg=#a0a1a7 guibg=2c323c")
-- vim.cmd("highlight FoldColumn guifg=333333 guibg=333333")
-- vim.cmd("highlight NERDTreeFile guibg=#282c34")
-- vim.cmd("highlight FZFfg guibg=#2c323c")
-- vim.cmd("highlight FZFbg guibg=#282c34")

-- Draw vertical lines to create an 80-120 char background
if vim.fn.exists('+colorcolumn') then
  -- Use columns to highlight text area
  vim.cmd([[ execute "set colorcolumn=".join(range(1,80), ',').join(range(80,100), ',') ]])
end
