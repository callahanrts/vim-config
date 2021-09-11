local autocommands = {
  _general_settings = {
    -- Remove trailing whitespace on save
    {
      "BufWritePre",
      "*",
      ":%s/\\s\\+$//e",
    },
    {
      "Filetype",
      "*",
      "lua require('utils.ft').do_filetype(vim.fn.expand(\"<amatch>\"))",
    },
    -- {
    --   "FileType",
    --   "qf",
    --   "nnoremap <silent> <buffer> q :q<CR>",
    -- },
    -- {
    --   "TextYankPost",
    --   "*",
    --   "lua require('vim.highlight').on_yank({higroup = 'Search', timeout = 200})",
    -- },
    {
      "BufWinEnter",
      "*",
      "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
    },
    -- {
    --   "BufWinEnter",
    --   "dashboard",
    --   "setlocal cursorline signcolumn=yes cursorcolumn number",
    -- },
    {
      "BufRead",
      "*",
      "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
    },
    {
      "BufNewFile",
      "*",
      "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
    },
    -- { "BufWritePost", config.path, "lua require('utils').reload_lv_config()" },
    -- {
    --   "FileType",
    --   "qf",
    --   "set nobuflisted",
    -- },
    -- { "VimLeavePre", "*", "set title set titleold=" },
  },
  _filetypechanges = {
    -- { "BufWinEnter", ".zsh", "setlocal filetype=sh" },
    -- { "BufRead", "*.zsh", "setlocal filetype=sh" },
  },
  _git = {
    { "FileType", "gitcommit", "setlocal wrap" },
    { "FileType", "gitcommit", "setlocal spell" },
  },
  _markdown = {
    { "FileType", "markdown", "setlocal wrap" },
    { "FileType", "markdown", "setlocal spell" },
  },
  _term = {
    -- Turn off line numbers in terminal mode
    { "TermOpen", "*", "setlocal nonumber norelativenumber" },
    { "TermOpen", "*", "setlocal winhighlight=Normal:ColorColumn" }
  },
  -- _buffer_bindings = {
  --   { "FileType", "floaterm", "nnoremap <silent> <buffer> q :q<CR>" },
  -- },
  _auto_resize = {
    -- Automatically resize splits to equal sizes when vim is resized
    { "VimResized", "*", "wincmd =" },
  },
  _packer_compile = {
    -- will run PackerCompile after writing plugins.lua
    { "BufWritePost", "plugins.lua", "PackerCompile" },
  },
  _general_lsp = {
    { "FileType", "lspinfo", "nnoremap <silent> <buffer> q :q<CR>" },
  },

  custom_groups = {},
}

-- Create autocommand groups based on the passed autocommands
--
-- The key will be the name of the group, and each definition
-- within the group should have:
--    1. Trigger
--    2. Pattern
--    3. Text
-- just like how they would normally be defined from Vim itself
for group_name, definition in pairs(autocommands) do
  vim.cmd("augroup " .. group_name)
  vim.cmd "autocmd!"

  for _, def in pairs(definition) do
    local command = table.concat(vim.tbl_flatten { "autocmd", def }, " ")
    vim.cmd(command)
  end

  vim.cmd "augroup END"
end
