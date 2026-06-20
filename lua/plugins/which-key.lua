return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      delay = 400,
      icons = { mappings = false },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)

      -- group labels for prefixes
      wk.add({
        { "<Leader>o",  group = "open" },
        { "<Leader>g",  group = "git" },
        { "<Leader>gp", group = "pr" },
        { "<Leader>gr", group = "review" },
        { "<Leader>gi", group = "issue" },
        { "<Leader>h",  group = "hunk" },
        { "<Leader>l",  group = "claude" },
        { "<Leader>c",  group = "code" },
        { "<C-x>",      group = "search" },
        { "<C-t>",      group = "tab" },
        { "g",          group = "goto" },
        { "]",          group = "next" },
        { "[",          group = "prev" },
      })

      -- annotate keymaps.lua bindings that lack descriptions
      wk.add({
        { "<Leader>op",   desc = "Open project (NERDTree)" },
        { "<Leader>ot",   desc = "Open terminal" },
        { "<Leader>og",   desc = "Open file in GitHub" },
        { "<Leader>s",    desc = "Save",                   mode = { "n", "v" } },
        { "<Leader>/",    desc = "Clear search highlight" },
        { "<Leader>tt",   desc = "Toggle dark/light theme", mode = { "n", "v" } },
        { "<Leader>z",    desc = "Zoom window" },
        { "<Leader>a",    desc = "Align (Tabularize)",      mode = { "n", "v" } },
        { "<Leader>ca",   desc = "Code action" },
        { "<Leader>cd",   desc = "Diagnostic docs" },
        { "<Leader>rn",   desc = "Rename symbol" },
        { "<C-x>b",       desc = "Buffers" },
        { "<C-x>f",       desc = "Files (FZF)" },
        { "<C-x>a",       desc = "Search (ripgrep)" },
        { "<C-x><C-f>",   desc = "Change directory" },
        { "<C-t>n",       desc = "New tab" },
        { "<C-t>x",       desc = "Close tab" },
        { "<BS>",         desc = "Switch to last buffer" },
      })
    end,
  },
}
