return {
  {
    "preservim/nerdtree",
    dependencies = { "tiagofumo/vim-nerdtree-syntax-highlight" },
    init = function()
      vim.g.NERDTreeIgnore = { [[\.pyc$]], [[\.rbc$]], [[\~$]] }
      vim.g.NERDTreeChDirMode = 2
      vim.g.NERDTreeShowBookmarks = 0
      vim.g.NERDTreeMinimalUI = 1
      vim.g.NERDTreeWinSize = 36
      vim.g.NERDTreeDirArrowExpandable = ''
      vim.g.NERDTreeDirArrowCollapsible = ''

      vim.g.NERDTreeCreatePrefix = "silent keepalt keepjumps"
      vim.g.webdevicons_conceal_nerdtree_brackets = 1
    end,
  },

  {
    "junegunn/fzf",
    dir = "~/.fzf",
    build = "./install --all",
  },
  {
    "junegunn/fzf.vim",
    dependencies = { "junegunn/fzf" },
    config = function()
      vim.g.fzf_action = {
        ["ctrl-t"] = "tab split",
        ["ctrl-i"] = "split",
        ["ctrl-s"] = "vsplit",
      }
      vim.g.fzf_colors = {
        bg    = { "bg", "ColorColumn" },
        ["bg+"] = { "bg", "NormalDark" },
      }

      vim.api.nvim_create_autocmd("User", {
        pattern = "FzfStatusLine",
        callback = function()
          vim.cmd([[
            highlight fzf1 ctermfg=161 ctermbg=251
            highlight fzf2 ctermfg=23  ctermbg=251
            highlight fzf3 ctermfg=237 ctermbg=251
            setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
          ]])
        end,
      })

      vim.cmd([[
        command! -bang -nargs=* Rg
          \ call fzf#vim#grep(
          \   'rg -i -S --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
          \   <bang>0 ? fzf#vim#with_preview('up:60%')
          \           : fzf#vim#with_preview('right:50%:hidden', '?'),
          \   <bang>0)
      ]])
    end,
  },
}
