return {
  {
    "vim-test/vim-test",
    init = function()
      vim.g["test#strategy"] = "neovim"
      vim.g["test#preserve_screen"] = 0
      vim.g["test#ruby#rspec#executable"] = "spec"
    end,
    keys = {
      { "t<C-n>", "<cmd>TestNearest<CR>", silent = true },
      { "t<C-f>", "<cmd>TestFile<CR>",    silent = true },
      { "t<C-s>", "<cmd>TestSuite<CR>",   silent = true },
      { "t<C-l>", "<cmd>TestLast<CR>",    silent = true },
      { "t<C-g>", "<cmd>TestVisit<CR>",   silent = true },
    },
  },
}
