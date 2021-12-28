local g = vim.g
g.nvim_tree_indent_markers = 1 --"0 by default, this option shows indent markers when folders are open
g.nvim_tree_auto_ignore_ft = 'startify' --"empty by default, don't auto open tree on specific filetypes.
g.nvim_tree_side = 'left' -- left by default
g.nvim_tree_width = 35 -- 30 by default
g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
}

g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = "",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "✗"
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = ""
  }
}

require'nvim-tree'.setup {
  nvim_tree_follow = 1,     -- 0 by default, this option allows the cursor to be updated when entering a buffer
  nvim_tree_auto_close = 1, -- 0 by default, closes the tree when it's the last window
  nvim_tree_ignore = { '.git', '.DS_Store', 'node_modules', '.cache' },
}
