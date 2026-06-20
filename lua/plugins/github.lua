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
      {
        "<Leader>gd",
        function()
          local function sys(cmd) local r = vim.fn.systemlist(cmd .. " 2>/dev/null"); return r and r[1] ~= "" and r[1] or nil end
          local base =
            sys("git config --local diff.base") or          -- per-repo override (set with <Leader>gdb)
            (sys("git rev-parse --verify --quiet origin/staging") and "origin/staging") or  -- staging if it exists
            sys("git symbolic-ref refs/remotes/origin/HEAD --short") or  -- remote's declared default
            "origin/main"                                   -- hard fallback
          vim.cmd("DiffviewOpen " .. base .. "...HEAD")
        end,
        desc = "Diff vs default branch",
      },
      {
        "<Leader>gdb",
        function()
          vim.ui.input({ prompt = "Diff base branch (blank to clear): " }, function(input)
            if input == nil then return end
            if input == "" then
              vim.fn.system("git config --local --unset diff.base")
              vim.notify("Cleared diff.base", vim.log.levels.INFO)
            else
              vim.fn.system("git config --local diff.base " .. vim.fn.shellescape(input))
              vim.notify("Set diff.base = " .. input, vim.log.levels.INFO)
            end
          end)
        end,
        desc = "Set diff base branch for this repo",
      },
      { "<Leader>gdo", "<cmd>DiffviewOpen<CR>",  desc = "Diff uncommitted changes" },
      { "<Leader>gdd", "<cmd>DiffviewClose<CR>", desc = "Close diffview" },
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
        -- right pane: added lines
        vim.api.nvim_set_hl(0, "DiffAdd",                     { bg = "#41483d" })
        vim.api.nvim_set_hl(0, "DiffviewDiffAdd",             { bg = "#41483d" })
        -- right pane: changed lines and char-level (overridden on left pane below)
        vim.api.nvim_set_hl(0, "DiffChange",                  { bg = "#41483d" })
        vim.api.nvim_set_hl(0, "DiffviewDiffChange",          { bg = "#41483d" })
        vim.api.nvim_set_hl(0, "DiffText",                    { bg = "#415654", bold = true })
        vim.api.nvim_set_hl(0, "DiffviewDiffText",            { bg = "#415654", bold = true })
        -- left pane overrides: changed lines and char-level in red
        vim.api.nvim_set_hl(0, "DiffviewDiffChangeDelete",    { bg = "#502d30" })
        vim.api.nvim_set_hl(0, "DiffviewDiffTextDelete",      { bg = "#6f2e2d", bold = true })
        -- left pane: added-as-delete (pure adds shown on left side)
        vim.api.nvim_set_hl(0, "DiffviewDiffAddAsDelete",     { bg = "#6f2e2d" })
        -- deleted lines (both panes)
        vim.api.nvim_set_hl(0, "DiffDelete",                  { bg = "#502d30" })
        vim.api.nvim_set_hl(0, "DiffviewDiffDelete",          { bg = "#502d30" })
        -- hatch fill (╱) lines: use ColorColumn bg so it blends with the editor.
        local comment = vim.api.nvim_get_hl(0, { name = "Comment", link = false })
        vim.api.nvim_set_hl(0, "DiffviewDiffDeleteDim", { fg = comment.fg, bg = "#282c34" })
      end

      set_diff_highlights()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = set_diff_highlights })

      -- DiffviewDiffBufWinEnter fires after diffview applies its winhighlight to a window,
      -- so we can safely overwrite the left pane's DiffChange/DiffText with red variants.
      -- We also disable cursorline in both panes: CursorLine.bg == Normal.bg in dark mode,
      -- which causes Neovim to render an underline as a fallback on diff-colored lines.
      vim.api.nvim_create_autocmd("User", {
        pattern = "DiffviewDiffBufWinEnter",
        callback = function()
          local ok, lib = pcall(require, "diffview.lib")
          if not ok then return end
          local view = lib.get_current_view()
          if not view or not view.cur_layout then return end

          local win_a = view.cur_layout.a
          if win_a and win_a.id and vim.api.nvim_win_is_valid(win_a.id) then
            local whl = vim.wo[win_a.id].winhighlight
            if not whl:find("DiffviewDiffChangeDelete", 1, true) then
              whl = whl:gsub("DiffChange:DiffviewDiffChange", "DiffChange:DiffviewDiffChangeDelete")
              whl = whl:gsub("DiffText:DiffviewDiffText",     "DiffText:DiffviewDiffTextDelete")
              vim.wo[win_a.id].winhighlight = whl
            end
            vim.wo[win_a.id].cursorline = false
          end

          local win_b = view.cur_layout.b
          if win_b and win_b.id and vim.api.nvim_win_is_valid(win_b.id) then
            vim.wo[win_b.id].cursorline = false
          end
        end,
      })
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
