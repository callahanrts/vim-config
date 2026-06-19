local opt = vim.opt

opt.number = true
opt.autoread = true
opt.ruler = true
opt.laststatus = 2
opt.scrolloff = 3
opt.showmode = false
opt.foldmethod = "marker"
opt.undofile = true
opt.updatetime = 100
opt.title = true
vim.o.titlestring = "%t - nvim"

local undodir = vim.fn.stdpath("data") .. "/undodir"
opt.undodir = undodir
vim.fn.mkdir(undodir, "p")

opt.clipboard = "unnamedplus"
opt.belloff = "all"

opt.wrap = false
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.list = true
opt.listchars = { tab = "  ", trail = "·" }
opt.fileformats:append("dos")

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.wildmenu = true
opt.wildmode = "full"

opt.cursorline = true
opt.background = "dark"
opt.termguicolors = true
opt.fillchars:append("vert:⮠")

local cols = {}
for i = 1, 79 do table.insert(cols, tostring(i)) end
for i = 81, 99 do table.insert(cols, tostring(i)) end
opt.colorcolumn = cols
