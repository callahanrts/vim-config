local function apply_overrides()
  if vim.opt.background:get() == "dark" then
    vim.cmd([[
      hi VertSplit    guifg=#3b4048
      hi WinSeparator guifg=#3b4048
      hi Normal       guibg=#2c323c
      hi NormalDark   guibg=#21252c
      hi ColorColumn  guibg=#282c34
      hi Folded       guifg=#a0a1a7 guibg=#2c323c
      hi FoldColumn   guifg=#333333 guibg=#333333
      hi NERDTreeFile guibg=#282c34
    ]])
  else
    vim.cmd([[
      hi Normal      guibg=#ececec
      hi ColorColumn guibg=#f9f9f9
      hi CursorLine  guibg=#ececec
      hi NormalDark  guibg=#ececec
    ]])
  end
  vim.cmd([[
    hi SignColumn   guibg=NONE ctermbg=NONE
    hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
  ]])
end

return {
  {
    "rakr/vim-one",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.one_allow_italics = 1
      vim.api.nvim_create_autocmd("ColorScheme", { callback = apply_overrides })
      vim.cmd.colorscheme("one")
    end,
  },
}
