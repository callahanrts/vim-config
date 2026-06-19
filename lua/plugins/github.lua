return {
  { "nvim-lua/plenary.nvim" },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },

  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    keys = {
      { "<Leader>gd",  "<cmd>DiffviewOpen origin/main...HEAD<CR>", desc = "Diff PR vs main" },
      { "<Leader>gdd", "<cmd>DiffviewClose<CR>",                   desc = "Close diffview" },
    },
    config = function()
      require("diffview").setup({
        enhanced_diff_hl = true,
        view = {
          default = { winbar_info = true },
          diff_view = { winbar_info = true },
        },
      })

      vim.opt.fillchars:append({ diff = "╱" })

      local function set_diff_highlights()
        -- added lines
        vim.api.nvim_set_hl(0, "DiffAdd",             { bg = "#1e3828" })
        vim.api.nvim_set_hl(0, "DiffviewDiffAdd",     { bg = "#1e3828" })
        -- added text within line
        vim.api.nvim_set_hl(0, "DiffviewDiffAddAsDelete", { bg = "#3c1f20" })
        -- deleted lines
        vim.api.nvim_set_hl(0, "DiffDelete",          { bg = "#3c1f20" })
        vim.api.nvim_set_hl(0, "DiffviewDiffDelete",  { bg = "#3c1f20" })
        -- changed lines
        vim.api.nvim_set_hl(0, "DiffChange",          { bg = "#1e3828" })
        -- changed text within line (word-level)
        vim.api.nvim_set_hl(0, "DiffText",            { bg = "#2d5a3d", bold = true })
        vim.api.nvim_set_hl(0, "DiffviewDiffDelete",  { bg = "#3c1f20" })
      end

      set_diff_highlights()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = set_diff_highlights })
    end,
  },

  {
    "pwntester/octo.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    cmd = "Octo",
    opts = {},
    keys = {
      { "<Leader>gpl", "<cmd>Octo pr list<CR>",       desc = "List PRs" },
      { "<Leader>gpi", "<cmd>Octo pr search<CR>",     desc = "Search PRs" },
      { "<Leader>gpc", "<cmd>Octo pr checkout<CR>",   desc = "Checkout PR" },
      { "<Leader>grs", "<cmd>Octo review start<CR>",  desc = "Start review" },
      { "<Leader>grr", "<cmd>Octo review resume<CR>", desc = "Resume review" },
      { "<Leader>grc", "<cmd>Octo review submit<CR>", desc = "Submit review" },
      { "<Leader>gil", "<cmd>Octo issue list<CR>",    desc = "List issues" },
      { "<Leader>gic", "<cmd>Octo issue create<CR>",  desc = "Create issue" },
    },
  },
}
