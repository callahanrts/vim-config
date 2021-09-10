-- require('colorbuddy').colorscheme('onebuddy')
-- require('theme.icons')
-- require('theme.one_override')

vim.cmd([[
colorscheme onedark
]])

-- Draw vertical lines to create an 80-120 char background
if vim.fn.exists('+colorcolumn') then
  -- Use columns to highlight text area
  vim.cmd([[ execute "set colorcolumn=".join(range(1,80), ',').join(range(80,100), ',') ]])
end
