vim.cmd("set fillchars+=vert:⮠")
-- vim.cmd("set cursorline") -- Highlight horizontal line
vim.cmd("set background=dark")
vim.cmd("let g:one_allow_italics = 1")

-- Turn signcolumn on always
vim.cmd("set scl=yes")

if vim.fn.has("nvim") then
  -- For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  vim.cmd("let $NVIM_TUI_ENABLE_TRUE_COLOR=1")
end

-- For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
-- Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
--  < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if vim.fn.has("termguicolors") then
  vim.cmd("set termguicolors")
end


-- Tmux cursor shapes for vim
if vim.fn.exists('$ITERM_PROFILE') then
  vim.cmd("set mouse=a")
  if vim.fn.exists('$TMUX') then
    vim.cmd('let &t_SI = "\\<Esc>[3 q"')
    vim.cmd('let &t_EI = "\\<Esc>[0 q"')
  else
    vim.cmd('let &t_SI = "\\<Esc>]50;CursorShape=1\\x7"')
    vim.cmd('let &t_EI = "\\<Esc>]50;CursorShape=0\\x7"')
  end
end

-- Terminal + Tmux pasting
-- function! WrapForTmux(s)
--   if !exists('$TMUX')
--     return a:s
--   endif
--
--   let tmux_start = "\<Esc>Ptmux;"
--   let tmux_end = "\<Esc>\\"
--
--   return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
-- endfunction
--
-- let &t_SI .= WrapForTmux("\<Esc>[?2004h")
-- let &t_EI .= WrapForTmux("\<Esc>[?2004l")
--
-- function! XTermPasteBegin()
--   set pastetoggle=<Esc>[201~
--   set paste
--   return ""
-- endfunction
--
-- inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

-- Set timeout to one second for normal commands and 0 for escape
if not vim.fn.has('gui_running') then
  vim.cmd("set ttimeoutlen=10")
  vim.cmd([[
    augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=500
    augroup END
  ]])
end


if vim.fn.exists('+colorcolumn') then
  -- Use columns to highlight text area
  vim.cmd([[ execute "set colorcolumn=".join(range(1,80), ',').join(range(80,100), ',') ]])
end


-- MacVim Settings
if vim.fn.has('gui_macvim') then
  vim.cmd("set guioptions=")
  vim.cmd("set guifont=Mezlo\\ M:h12")
end
