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
opt.fillchars:append("diff:╱")

local cols = {}
for i = 1, 79 do table.insert(cols, tostring(i)) end
for i = 81, 99 do table.insert(cols, tostring(i)) end
opt.colorcolumn = cols

-- Diff highlight fixes: strip fg so syntax colors show through the bg.
local diff_hl_aug = vim.api.nvim_create_augroup("DiffHighlights", { clear = true })

local function patch_diff_hl()
  vim.api.nvim_set_hl(0, "DiffAdd",    { bg = "#1e3d26" })
  vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#3d1e1e" })
  vim.api.nvim_set_hl(0, "DiffChange", { bg = "#1e2d3d" })
  vim.api.nvim_set_hl(0, "DiffText",   { bg = "#0a4a1a", bold = true })
  local cl = vim.api.nvim_get_hl(0, { name = "CursorLine", link = false })
  cl.underline = nil
  if cl.cterm then cl.cterm.underline = nil end
  vim.api.nvim_set_hl(0, "CursorLine", cl)
end

vim.api.nvim_create_autocmd("ColorScheme", { group = diff_hl_aug, callback = patch_diff_hl })
patch_diff_hl()
