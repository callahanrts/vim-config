local map = vim.keymap.set

map("i", "<C-c>", "<Esc><Esc>")

map("n", "<Leader>op", "<cmd>NERDTreeCWD<CR>")

map("t", "<Esc>", "<C-\\><C-n>")
map("t", "<C-o>", "<C-\\><C-n>:q<CR>")
map("t", "<M-b>", "<C-\\><C-n><cmd>ClaudeCode<CR>")
map("t", "<C-h>", "<C-\\><C-n><C-w>h")
map("t", "<C-j>", "<C-\\><C-n><C-w>j")
map("t", "<C-k>", "<C-\\><C-n><C-w>k")
map("t", "<C-l>", "<C-\\><C-n><C-w>l")
map("n", "<Leader>ot", ":split<CR><C-w>j:term<CR>")

map("n", "<Leader>og", "<cmd>.Gbrowse<CR>")

map({ "n", "v" }, "<Leader>s", "<cmd>w<CR>")

map("n", "<C-t>n", "<cmd>tabnew<CR>")
map("n", "<C-t>x", "<cmd>tabclose<CR>")

map("n", "<C-x>b", "<cmd>Buffers<CR>")
map("n", "<C-x>f", "<cmd>FZF<CR>")
map("n", "<C-x>a", ":Rg ")
map("n", "<C-x><C-f>", ":cd ~/")

map("n", "<Leader>/", "<cmd>nohlsearch<CR>")

map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "*", "*zz")
map("n", "#", "#zz")
map("n", "g*", "g*zz")
map("n", "g#", "g#zz")

map("n", "<BS>", "<C-^>")

map({ "n", "v" }, "<Leader>a", ":Tabularize /")

map({ "n", "v" }, "<Leader>tt", function()
  vim.opt.background = vim.opt.background:get() == "dark" and "light" or "dark"
end)

local zoomed = false
local zoom_winrestcmd = ""
map("n", "<Leader>z", function()
  if zoomed then
    vim.cmd(zoom_winrestcmd)
    zoomed = false
  else
    zoom_winrestcmd = vim.fn.winrestcmd()
    vim.cmd("resize | vertical resize")
    zoomed = true
  end
end)

map({ "n", "v", "o" }, "<C-n>", "}")
map({ "n", "v", "o" }, "<C-p>", "{")

map("n", "<C-S-P>", function()
  local stack = vim.fn.synstack(vim.fn.line("."), vim.fn.col("."))
  local names = vim.tbl_map(function(id) return vim.fn.synIDattr(id, "name") end, stack)
  print(vim.inspect(names))
end)
