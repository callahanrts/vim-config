require('onedark').setup()

-- Set the ColorColumn a little darker than Normal
vim.cmd("highlight ColorColumn guibg=#21252b")

-- Draw vertical lines to create an 80-120 char background
if vim.fn.exists('+colorcolumn') then
  -- Use columns to highlight text area
  vim.cmd([[ execute "set colorcolumn=".join(range(1,80), ',').join(range(80,100), ',') ]])
end
