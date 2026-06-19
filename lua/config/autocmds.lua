local autocmd = vim.api.nvim_create_autocmd

autocmd("VimEnter", {
  callback = function()
    if vim.fn.exists("g:loaded_webdevicons") == 1 then
      vim.fn["webdevicons#refresh"]()
    end
  end,
})

autocmd("VimResized", {
  callback = function() vim.cmd("wincmd =") end,
})

autocmd("FileType", {
  pattern = "markdown",
  callback = function() vim.opt_local.spell = true end,
})

autocmd("BufWritePre", {
  callback = function() vim.cmd([[%s/\s\+$//e]]) end,
})

local ft_patterns = {
  { pattern = "*.coffee",        ft = "coffee" },
  { pattern = "*.jade",          ft = "jade" },
  { pattern = "*.styl",          ft = "stylus" },
  { pattern = "*.raml",          ft = "yaml" },
  { pattern = { "*.es6", "*.es" }, ft = "javascript" },
}
for _, entry in ipairs(ft_patterns) do
  autocmd({ "BufRead", "BufNewFile" }, {
    pattern = entry.pattern,
    callback = function() vim.bo.filetype = entry.ft end,
  })
end
