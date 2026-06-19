return {
  { "vim-ruby/vim-ruby",         ft = "ruby" },
  { "cakebaker/scss-syntax.vim", ft = "scss" },
  { "JulesWang/css.vim",         ft = "css" },
  { "kchmck/vim-coffee-script",  ft = "coffee" },
  { "tpope/vim-haml",            ft = "haml" },
  { "posva/vim-vue" },
  { "yuezk/vim-js" },
  { "leafgarland/typescript-vim" },
  { "ElmCast/elm-vim" },

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
