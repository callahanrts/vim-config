return {
  {
    "christoomey/vim-tmux-navigator",
    cond = function() return vim.env.TMUX ~= nil end,
    init = function()
      vim.g.tmux_navigator_no_mappings = 1
    end,
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<CR>",              silent = true },
      { "<C-j>", "<cmd>TmuxNavigateDown<CR>",              silent = true },
      { "<C-k>", "<cmd>TmuxNavigateUp<CR>",                silent = true },
      { "<C-l>", "<cmd>TmuxNavigateRight<CR>",             silent = true },
      { "<C-h>", "<C-\\><C-n><cmd>TmuxNavigateLeft<CR>",  mode = "t", silent = true },
      { "<C-j>", "<C-\\><C-n><cmd>TmuxNavigateDown<CR>",  mode = "t", silent = true },
      { "<C-k>", "<C-\\><C-n><cmd>TmuxNavigateUp<CR>",    mode = "t", silent = true },
      { "<C-l>", "<C-\\><C-n><cmd>TmuxNavigateRight<CR>", mode = "t", silent = true },
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
      { "<C-h>", "<cmd>KittyNavigateLeft<CR>",              silent = true },
      { "<C-j>", "<cmd>KittyNavigateDown<CR>",              silent = true },
      { "<C-k>", "<cmd>KittyNavigateUp<CR>",                silent = true },
      { "<C-l>", "<cmd>KittyNavigateRight<CR>",             silent = true },
      { "<C-h>", "<C-\\><C-n><cmd>KittyNavigateLeft<CR>",  mode = "t", silent = true },
      { "<C-j>", "<C-\\><C-n><cmd>KittyNavigateDown<CR>",  mode = "t", silent = true },
      { "<C-k>", "<C-\\><C-n><cmd>KittyNavigateUp<CR>",    mode = "t", silent = true },
      { "<C-l>", "<C-\\><C-n><cmd>KittyNavigateRight<CR>", mode = "t", silent = true },
    },
  },
}
