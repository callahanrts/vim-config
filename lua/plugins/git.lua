return {
  { "tpope/vim-fugitive" },
  { "tpope/vim-rhubarb" },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add          = { text = "⮠" },
          change       = { text = "⮠" },
          delete       = { text = "⮡" },
          topdelete    = { text = "⮢" },
          changedelete = { text = "⮠⮡" },
        },
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          local map = function(mode, keys, func)
            vim.keymap.set(mode, keys, func, { buffer = bufnr })
          end

          map("n", "]h", gs.next_hunk)
          map("n", "[h", gs.prev_hunk)
          map({ "n", "v" }, "<Leader>hs", ":Gitsigns stage_hunk<CR>")
          map({ "n", "v" }, "<Leader>hr", ":Gitsigns reset_hunk<CR>")
          map("n", "<Leader>hS", gs.stage_buffer)
          map("n", "<Leader>hu", gs.undo_stage_hunk)
          map("n", "<Leader>hp", gs.preview_hunk)
          map("n", "<Leader>hb", gs.blame_line)
        end,
      })
    end,
  },
}
