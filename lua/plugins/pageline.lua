vim.cmd('set rtp+=/Users/cody/.config/nvim/my_plugins/pageline.nvim')

require('pageline').setup{
  test = "hello test",
  colors = {
    pageline = {
      fg = "#ffffff"
    }
  }
}
