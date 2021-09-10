require('lspconfig').solargraph.setup {
  filetypes = { "ruby" },
  init_options = {
    formatting = true,
  },
  root_dir = function(fname)
    local util = require("lspconfig").util
    return util.root_pattern("Gemfile", ".git")(fname)
  end,
  settings = {
    solargraph = {
      diagnostics = true,
    },
  },
}
