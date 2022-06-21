require('onedark').setup  {
  -- Main options --
  style = 'dark', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = false,  -- Show/hide background
  term_colors = true, -- Change terminal color as per the selected theme style
  ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
  -- toggle theme style ---
  toggle_style_key = '<leader>ts', -- Default keybinding to toggle
  -- toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
  toggle_style_list = {'dark', 'light'}, -- List of styles to toggle between

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },

  -- Custom Highlights --
  colors = {}, -- Override default colors

  -- Override highlight groups
  highlights = {
    ColorColumn = { bg = '#21252b' },
    Search = { bg = '#FBC02D' },

    -- WhichKey highlights
    -- WhichKeyFloat = { bg = '#21252b' },
    -- WhichKey = { bg = '#21252b' },
    -- WhichKeyGroup  = { bg = '#21252b' },
    -- WhichKeySeparator = { bg = '#21252b' },
    -- WhichKeyDesc = { bg = '#21252b' },
    -- WhichKeyFloat = { bg = '#21252b' },
    -- WhichKeyValue = { bg = '#21252b' },
  },

  -- Plugins Config --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true,   -- use undercurl instead of underline for diagnostics
    background = true,    -- use background color for virtual text
  },
}

require('onedark').load()

-- Set the ColorColumn a little darker than Normal
-- vim.cmd("highlight ColorColumn guibg=#21252b")

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
