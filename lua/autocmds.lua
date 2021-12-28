local autocommands = {
  _general_settings = {
    -- Remove trailing whitespace on save
    { "BufWritePre", "*", ":%s/\\s\\+$//e" },
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

  _auto_resize = {
    -- Automatically resize splits to equal sizes when vim is resized
    { "VimResized", "*", "wincmd =" },
  },

  _packer_compile = {
    -- will run PackerCompile after writing plugins.lua
    { "BufWritePost", "plugins.lua", "PackerCompile" },
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
