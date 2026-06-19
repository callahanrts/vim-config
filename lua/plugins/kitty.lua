return {
  {
    "christoomey/vim-tmux-navigator",
    cond = function() return vim.env.TMUX ~= nil end,
    init = function()
      vim.g.tmux_navigator_no_mappings = 1
    end,
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<CR>",  silent = true },
      { "<C-j>", "<cmd>TmuxNavigateDown<CR>",  silent = true },
      { "<C-k>", "<cmd>TmuxNavigateUp<CR>",    silent = true },
      { "<C-l>", "<cmd>TmuxNavigateRight<CR>", silent = true },
    },
  },
  {
    "knubie/vim-kitty-navigator",
    cond = function() return vim.env.TMUX == nil end,
    build = "cp ./*.py ~/.config/kitty/",
    init = function()
      vim.g.kitty_navigator_listening_on_address = "unix:/tmp/mykitty"
      vim.g.kitty_navigator_no_mappings = 1
    end,
    keys = {
      { "<C-h>", "<cmd>KittyNavigateLeft<CR>",  silent = true },
      { "<C-j>", "<cmd>KittyNavigateDown<CR>",  silent = true },
      { "<C-k>", "<cmd>KittyNavigateUp<CR>",    silent = true },
      { "<C-l>", "<cmd>KittyNavigateRight<CR>", silent = true },
    },
  },
}
