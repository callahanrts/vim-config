vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.python3_host_prog = "/usr/bin/python3"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config.options")
require("config.keymaps")
require("config.autocmds")

require("lazy").setup("plugins", {
  change_detection = { notify = false },
})

--[[
-- TODO:
--   * Look at Claude code neovim plugin
--   * Look at Octo.nvim
--]]
