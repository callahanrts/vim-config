return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "ruby", "erb", "html", "css", "scss",
          "javascript", "typescript", "tsx",
          "json", "yaml", "lua", "vim", "vimdoc",
          "markdown", "markdown_inline",
        },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  { "tpope/vim-rails",             ft = { "ruby", "eruby" } },
  { "tpope/vim-haml",              ft = "haml" },
  { "kchmck/vim-coffee-script",    ft = "coffee" },
  { "ElmCast/elm-vim",             ft = "elm" },

  {
    "plasticboy/vim-markdown",
    ft = "markdown",
    init = function()
      vim.g.vim_markdown_folding_disabled = 1
    end,
  },

  {
    "prettier/vim-prettier",
    build = "yarn install",
    branch = "release/0.x",
    ft = { "javascript", "typescript", "css", "scss", "json", "graphql", "markdown", "vue", "html" },
  },

  {
    "kana/vim-textobj-user",
    dependencies = { "whatyouhide/vim-textobj-xmlattr" },
  },
}
