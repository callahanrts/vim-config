local g = vim.g
g.nvim_tree_indent_markers = 1 --"0 by default, this option shows indent markers when folders are open
g.nvim_tree_auto_ignore_ft = 'startify' --"empty by default, don't auto open tree on specific filetypes.
g.nvim_tree_side = 'left' -- left by default
g.nvim_tree_width = 35 -- 30 by default
g.nvim_tree_git_hl = 1 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
-- g.nvim_tree_bindings = {
--   -- mappings
--   ["<CR>"] = tree_cb("edit"),
--   -- ["l"] = tree_cb("edit"),
--   ["o"] = tree_cb("edit"),
--   ["<2-LeftMouse>"] = tree_cb("edit"),
--   ["<2-RightMouse>"] = tree_cb("cd"),
--   ["<C-]>"] = tree_cb("cd"),
--   ["v"] = tree_cb("vsplit"),
--   ["i"] = tree_cb("vsplit"),
--   ["s"] = tree_cb("split"),
--   -- ["<C-t>"] = tree_cb("tabnew"),
--   ["h"] = tree_cb("close_node"),
--   ["<BS>"] = tree_cb("close_node"),
--   ["<S-CR>"] = tree_cb("close_node"),
--   ["<Tab>"] = tree_cb("preview"),
--   ["I"] = tree_cb("toggle_ignored"),
--   ["H"] = tree_cb("toggle_dotfiles"),
--   ["R"] = tree_cb("refresh"),
--   ["a"] = tree_cb("create"),
--   ["d"] = tree_cb("remove"),
--   ["r"] = tree_cb("rename"),
--   ["<C-r>"] = tree_cb("full_rename"),
--   ["x"] = tree_cb("cut"),
--   ["c"] = tree_cb("copy"),
--   ["p"] = tree_cb("paste"),
--   ["[c"] = tree_cb("prev_git_item"),
--   ["]c"] = tree_cb("next_git_item"),
--   ["-"] = tree_cb("dir_up"),
--   ["q"] = tree_cb("close")
-- }

g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
}

-- [NvimTree] following options are now set in the setup (:help nvim-tree.setup): nvim_tree_auto_close | nvim_tree_follow
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
--   disable_netrw       = true,
--   hijack_netrw        = true,
--   open_on_setup       = false,
--   ignore_ft_on_setup  = {},
--   update_to_buf_dir   = {
--     enable = true,
--     auto_open = true,
--   },
--   auto_close          = false,
--   open_on_tab         = false,
--   hijack_cursor       = false,
--   update_cwd          = false,
--   diagnostics         = {
--     enable = false,
--     icons = {
--       hint = "",
--       info = "",
--       warning = "",
--       error = "",
--     }
--   },
--   update_focused_file = {
--     enable      = false,
--     update_cwd  = false,
--     ignore_list = {}
--   },
--   system_open = {
--     cmd  = nil,
--     args = {}
--   },
--   view = {
--     width = 30,
--     height = 30,
--     side = 'left',
--     auto_resize = false,
--     mappings = {
--       custom_only = false,
--       list = {}
--     }
--   }
}
