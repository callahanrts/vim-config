require'nvim-tree'.setup {
  ignore_ft_on_setup = {
    'startify'
  },

  actions = {
    remove_file = {
      close_window = true,
    },
  },

  view = {
    width = 35,
    side = 'left',
  },
  -- nvim_tree_follow = 1,     -- 0 by default, this option allows the cursor to be updated when entering a buffer

  renderer = {
    highlight_git = true,

    indent_markers = {
      enable = true,
      icons = {
        corner = "└ ",
        edge = "│ ",
        item = "│ ",
        none = "  ",
      },
    },

    git = {
      enable = true,
      ignore = true,
      timeout = 400,
    },

    icons = {
      show = {
        git = false,
        folder = true,
        file = true,
        folder_arrow = false,
      },
      glyphs = {
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
    }
  },

  -- nvim_tree_git_hl = 1, -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
}
