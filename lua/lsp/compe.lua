vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = false;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}

-- nvim-compe default bindings
vim.cmd("inoremap <silent><expr> <C-Space> compe#complete()")
vim.cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
vim.cmd("inoremap <silent><expr> <C-e>     compe#close('<C-e>')")
vim.cmd("inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })")
vim.cmd("inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })")

-- vim.api.nvim_set_keymap('i', '<c-space>', "vim.fn['compe#complete']()", { expr = true, noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<CR>', "vim.fn['compe#confirm']('<CR>')", { expr = true, noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<c-e>', "vim.fn['compe#close']('<C-e>')", { expr = true, noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<c-f>', "vim.fn['compe#scroll']({ 'delta': +4 })", { expr = true, noremap = true, silent = true })
-- vim.api.nvim_set_keymap('i', '<c-d>', "vim.fn['compe#scroll']({ 'delta': -4 })", { expr = true, noremap = true, silent = true })
