-- Fzf-lua

-- Search 'f'
vim.api.nvim_set_keymap('n',  '<leader>ff',  ":FzfLua files<cr>",       {}) -- Find files
vim.api.nvim_set_keymap('n',  '<leader>.',   ":FzfLua git_files<cr>",   {}) -- Find git files
vim.api.nvim_set_keymap('n',  '<leader>ft',  ':FzfLua grep<cr>',        {}) -- Find text / Grep
vim.api.nvim_set_keymap('n',  '<leader>,',   ":FzfLua grep<cr>",        {}) -- Grep shortcut
vim.api.nvim_set_keymap('n',  '<leader>f/',  ":FzfLua grep_last<cr>",   {}) -- Find last
vim.api.nvim_set_keymap('n',  '<leader>fw',  ":FzfLua grep_cword<cr>",  {}) -- Find word
vim.api.nvim_set_keymap('n',  '<leader>fh',  ":FzfLua grep_cword<cr>",  {}) -- Find here
vim.api.nvim_set_keymap('n',  '<leader>fb',  ':FzfLua buffers<cr>',     {}) -- Find buffers

-- Git
vim.api.nvim_set_keymap('n',  '<leader>fgf',  ':FzfLua git_files<cr>',     {}) -- Git files
vim.api.nvim_set_keymap('n',  '<leader>fgs',  ':FzfLua git_status<cr>',    {}) -- Git preview
vim.api.nvim_set_keymap('n',  '<leader>fgc',  ':FzfLua git_commits<cr>',   {}) -- Git history
vim.api.nvim_set_keymap('n',  '<leader>fgh',  ':FzfLua git_bcommits<cr>',  {}) -- Git file history
vim.api.nvim_set_keymap('n',  '<leader>fgb',  ':FzfLua git_branches<cr>',  {}) -- Git branches

-- LSP
vim.api.nvim_set_keymap('n',     '<leader>fcr',   ':FzfLua lsp_references<cr>',          {}) -- References
vim.api.nvim_set_keymap('n',     '<leader>fcd',   ':FzfLua lsp_definitions<cr>',         {}) -- Definitions
vim.api.nvim_set_keymap('n',     '<leader>fcc',   ':FzfLua lsp_declarations',            {}) -- Declarations
vim.api.nvim_set_keymap('n',     '<leader>fct',   ':FzfLua lsp_typedefs',                {}) -- Type Definitions
vim.api.nvim_set_keymap('n',     '<leader>fci',   ':FzfLua lsp_implementations',         {}) -- Implementations
vim.api.nvim_set_keymap('n',     '<leader>fcsd',  ':FzfLua lsp_document_symbols',        {}) -- Document Symbols
vim.api.nvim_set_keymap('n',     '<leader>fcsw',  ':FzfLua lsp_workspace_symbols',       {}) -- Workspace Symbols
                                                                                             -- vim.api.nvim_set_keymap('n',  '<leader>fc',    ':FzfLua lsp_live_workspace_symbols',  {}) -- Workspace Symbols (live query)
vim.api.nvim_set_keymap('n',     '<leader>fca',   ':FzfLua lsp_code_actions',            {}) -- Code Actions
vim.api.nvim_set_keymap('n',     '<leader>fcpd',  ':FzfLua lsp_document_diagnostics',    {}) -- Document Diagnostics
vim.api.nvim_set_keymap('n',     '<leader>fcpw',  ':FzfLua lsp_workspace_diagnostics',   {}) -- Workspace Diagnostics

-- MISC (o - other)
vim.api.nvim_set_keymap('n',  '<leader>fob',   ':FzfLua builtin',          {}) -- fzf-lua builtin commands
vim.api.nvim_set_keymap('n',  '<leader>fl',    ':FzfLua builtin',          {}) -- fzf-lua builtin commands
vim.api.nvim_set_keymap('n',  '<leader>foh',   ':FzfLua help_tags',        {}) -- Help tags
vim.api.nvim_set_keymap('n',  '<leader>fop',   ':FzfLua man_pages',        {}) -- Man pages
vim.api.nvim_set_keymap('n',  '<leader>fp',   ':FzfLua man_pages',        {}) -- Man pages
vim.api.nvim_set_keymap('n',  '<leader>foc',   ':FzfLua color_schemes',    {}) -- Colorschemes
vim.api.nvim_set_keymap('n',  '<leader>fon',   ':FzfLua commands',         {}) -- Neovim commands
vim.api.nvim_set_keymap('n',  '<leader>foN',   ':FzfLua command_history',  {}) -- Command history
vim.api.nvim_set_keymap('n',  '<leader>fo/',   ':FzfLua search_history',   {}) -- Search
vim.api.nvim_set_keymap('n',  '<leader>fom',   ':FzfLua marks',            {}) -- Marks
vim.api.nvim_set_keymap('n',  '<leader>fm',    ':FzfLua marks',            {}) -- Marks
vim.api.nvim_set_keymap('n',  '<leader>for',   ':FzfLua registers',        {}) -- Registers
vim.api.nvim_set_keymap('n',  '<leader>fr',    ':FzfLua registers',        {}) -- Registers
vim.api.nvim_set_keymap('n',  '<leader>fok',   ':FzfLua keymaps',          {}) -- Key mappings
vim.api.nvim_set_keymap('n',  '<leader>fk',    ':FzfLua keymaps',          {}) -- Key mappings
vim.api.nvim_set_keymap('n',  '<leader>fos',   ':FzfLua spell_suggest',    {}) -- Spelling suggestions
vim.api.nvim_set_keymap('n',  '<leader>fotp',  ':FzfLua tags',             {}) -- Project tags
vim.api.nvim_set_keymap('n',  '<leader>fotb',  ':FzfLua btags',            {}) -- Buffer tags
vim.api.nvim_set_keymap('n',  '<leader>fof',   ':FzfLua filetypes',        {}) -- File types
-- packadd         	 :packadd



local actions = require "fzf-lua.actions"
require'fzf-lua'.setup {
  winopts = {
    -- split         = "belowright new",-- open in a split instead?
                                        -- "belowright new"  : split below
                                        -- "aboveleft new"   : split above
                                        -- "belowright vnew" : split right
                                        -- "aboveleft vnew   : split left
    -- Only valid when using a float window
    -- (i.e. when 'split' is not defined)
    height           = 0.85,            -- window height
    width            = 0.80,            -- window width
    row              = 0.35,            -- window row position (0=top, 1=bottom)
    col              = 0.50,            -- window col position (0=left, 1=right)
    -- border argument passthrough to nvim_open_win(), also used
    -- to manually draw the border characters around the preview
    -- window, can be set to 'false' to remove all borders or to
    -- 'none', 'single', 'double' or 'rounded' (default)
    border           = { '╭', '─', '╮', '│', '╯', '─', '╰', '│' },
    fullscreen       = false,           -- start fullscreen?
    hl = {
      normal         = 'Normal',        -- window normal color (fg+bg)
      border         = 'Normal',        -- border color (try 'FloatBorder')
      -- Only valid with the builtin previewer:
      cursor         = 'Cursor',        -- cursor highlight (grep/LSP matches)
      cursorline     = 'CursorLine',    -- cursor line
      -- title       = 'Normal',        -- preview border title (file/buffer)
      -- scrollbar_f = 'PmenuThumb',    -- scrollbar "full" section highlight
      -- scrollbar_e = 'PmenuSbar',     -- scrollbar "empty" section highlight
    },
    preview = {
      -- default     = 'bat',           -- override the default previewer?
                                        -- default uses the 'builtin' previewer
      border         = 'border',        -- border|noborder, applies only to
                                        -- native fzf previewers (bat/cat/git/etc)
      wrap           = 'nowrap',        -- wrap|nowrap
      hidden         = 'nohidden',      -- hidden|nohidden
      vertical       = 'down:45%',      -- up|down:size
      horizontal     = 'right:60%',     -- right|left:size
      layout         = 'flex',          -- horizontal|vertical|flex
      flip_columns   = 120,             -- #cols to switch to horizontal on flex
      -- Only valid with the builtin previewer:
      title          = true,            -- preview border title (file/buf)?
      scrollbar      = 'float',         -- `false` or string:'float|border'
                                        -- float:  in-window floating border
                                        -- border: in-border chars (see below)
      scrolloff      = '-2',            -- float scrollbar offset from right
                                        -- applies only when scrollbar = 'float'
      scrollchars    = {'█', '' },      -- scrollbar chars ({ <full>, <empty> }
                                        -- applies only when scrollbar = 'border'
    },
    on_create = function()
      -- called once upon creation of the fzf main window
      -- can be used to add custom fzf-lua mappings, e.g:
      --   vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", "<Down>",
      --     { silent = true, noremap = true })
    end,
  },
  keymap = {
    -- These override the default tables completely
    -- no need to set to `false` to disable a bind
    -- delete or modify is sufficient
    builtin = {
      -- neovim `:tmap` mappings for the fzf win
      -- ["<F2>"]        = "toggle-fullscreen",
      -- Only valid with the 'builtin' previewer
      -- ["<F3>"]        = "toggle-preview-wrap",
      -- ["<F4>"]        = "toggle-preview",
      -- Rotate preview clockwise/counter-clockwise
      -- ["<F5>"]        = "toggle-preview-ccw",
      -- ["<F6>"]        = "toggle-preview-cw",
      ["ctrl-d"]      = "preview-page-down",
      ["ctrl-u"]      = "preview-page-up",
      -- ["<S-left>"]    = "preview-page-reset",
    },
    fzf = {
      -- fzf '--bind=' options
      ["ctrl-z"]      = "abort",
      -- ["ctrl-u"]      = "unix-line-discard",
      -- ["ctrl-f"]      = "half-page-down",
      -- ["ctrl-b"]      = "half-page-up",
      -- ["ctrl-a"]      = "beginning-of-line",
      -- ["ctrl-e"]      = "end-of-line",
      -- ["alt-a"]       = "toggle-all",
      -- Only valid with fzf previewers (bat/cat/git/etc)
      ["f3"]          = "toggle-preview-wrap",
      ["f4"]          = "toggle-preview",
      ["ctrl-d"]      = "preview-page-down",
      ["ctrl-u"]      = "preview-page-up",
    },
  },
  -- use skim instead of fzf?
  -- https://github.com/lotabout/skim
  -- fzf_bin          = 'sk',
  fzf_opts = {
    -- options are sent as `<left>=<right>`
    -- set to `false` to remove a flag
    -- set to '' for a non-value flag
    -- for raw args use `fzf_args` instead
    ['--ansi']        = '',
    ['--prompt']      = ' ',
    ['--info']        = 'inline',
    ['--height']      = '100%',
    ['--layout']      = 'default',
  },
  fzf_raw_args = "--pointer=' ❯'",

  -- fzf '--color=' options (optional)
  fzf_colors = {
      -- ["fg"] = { "fg", "CursorLine" },
      ["bg"] = { "bg", "ColorColumn" },
      ["hl"] = { "fg", "Comment" },
      -- ["fg+"] = { "fg", "Normal" },
      ["bg+"] = { "bg", "ColorColumn" },
      -- ["hl+"] = { "fg", "Statement" },
      -- ["info"] = { "fg", "PreProc" },
      -- ["prompt"] = { "fg", "Conditional" },
      -- ["pointer"] = { "fg", "Exception" },
      -- ["marker"] = { "fg", "Keyword" },
      -- ["spinner"] = { "fg", "Label" },
      -- ["header"] = { "fg", "Comment" },
      ["gutter"] = { "bg", "ColorColumn" },
  },
  previewers = {
    cat = {
      cmd             = "cat",
      args            = "--number",
    },
    bat = {
      cmd             = "bat",
      args            = "--style=numbers,changes --color always",
      theme           = 'Coldark-Dark', -- bat preview theme (bat --list-themes)
      config          = nil,            -- nil uses $BAT_CONFIG_PATH
    },
    head = {
      cmd             = "head",
      args            = nil,
    },
    git_diff = {
      cmd             = "git diff",
      args            = "--color",
    },
    man = {
      cmd             = "man -c %s | col -bx",
    },
    builtin = {
      delay           = 100,          -- delay(ms) displaying the preview
                                      -- prevents lag on fast scrolling
      syntax          = true,         -- preview syntax highlight?
      syntax_limit_l  = 0,            -- syntax limit (lines), 0=nolimit
      syntax_limit_b  = 1024*1024,    -- syntax limit (bytes), 0=nolimit
    },
  },
  -- provider setup
  files = {
    -- previewer         = "cat",       -- uncomment to override previewer
    prompt            = 'Files❯ ',
    cmd               = '',             -- "find . -type f -printf '%P\n'",
    git_icons         = false,           -- show git icons?
    file_icons        = false,           -- show file icons?
    color_icons       = true,           -- colorize file|git icons
    actions = {
      -- set bind to 'false' to disable
      ["default"]     = actions.file_edit,
      ["ctrl-s"]      = actions.file_split,
      ["ctrl-v"]      = actions.file_vsplit,
      ["ctrl-t"]      = actions.file_tabedit,
      ["alt-q"]       = actions.file_sel_to_qf,
      -- custom actions are available too
      ["ctrl-y"]      = function(selected) print(selected[1]) end,
    }
  },
  git = {
    files = {
      prompt          = 'GitFiles❯ ',
      cmd             = 'git ls-files --exclude-standard',
      git_icons       = false,           -- show git icons?
      file_icons      = false,           -- show file icons?
      color_icons     = true,           -- colorize file|git icons
    },
    status = {
      prompt        = 'GitStatus❯ ',
      cmd           = "git status -s",
      previewer     = "git_diff",
      file_icons    = false,
      git_icons     = false,
      color_icons   = true,
    },
    commits = {
      prompt          = 'Commits❯ ',
      cmd             = "git log --pretty=oneline --abbrev-commit --color",
      preview         = "git show --pretty='%Cred%H%n%Cblue%an%n%Cgreen%s' --color {1}",
      actions = {
        ["default"] = actions.git_checkout,
      },
    },
    bcommits = {
      prompt          = 'BCommits❯ ',
      cmd             = "git log --pretty=oneline --abbrev-commit --color",
      preview         = "git show --pretty='%Cred%H%n%Cblue%an%n%Cgreen%s' --color {1}",
      actions = {
        ["default"] = actions.git_buf_edit,
        ["ctrl-s"]  = actions.git_buf_split,
        ["ctrl-v"]  = actions.git_buf_vsplit,
        ["ctrl-t"]  = actions.git_buf_tabedit,
      },
    },
    branches = {
      prompt          = 'Branches❯ ',
      cmd             = "git branch --all --color",
      preview         = "git log --graph --pretty=oneline --abbrev-commit --color {1}",
      actions = {
        ["default"] = actions.git_switch,
      },
    },
    icons = {
      ["M"]           = { icon = "M", color = "yellow" },
      ["D"]           = { icon = "D", color = "red" },
      ["A"]           = { icon = "A", color = "green" },
      ["?"]           = { icon = "?", color = "magenta" },
      -- ["M"]          = { icon = "★", color = "red" },
      -- ["D"]          = { icon = "✗", color = "red" },
      -- ["A"]          = { icon = "+", color = "green" },
    },
  },
  grep = {
    prompt            = 'Rg❯ ',
    input_prompt      = 'Grep For❯ ',
    -- cmd               = "rg --vimgrep",
    rg_opts           = "--hidden --column --line-number --no-heading " ..
                        "--color=always --smart-case -g '!{.git,node_modules}/*'",
    git_icons         = false,           -- show git icons?
    file_icons        = false,           -- show file icons?
    color_icons       = true,           -- colorize file|git icons
    -- 'true' enables file and git icons in 'live_grep'
    -- degrades performance in large datasets, YMMV
    experimental      = false,
    -- live_grep_glob options
    glob_flag         = "--iglob",  -- for case sensitive globs use '--glob'
    glob_separator    = "%s%-%-"    -- query separator pattern (lua): ' --'
  },
  args = {
    prompt            = 'Args❯ ',
    files_only        = true,
    actions = {
      -- added on top of regular file actions
      ["ctrl-x"]      = actions.arg_del,
    }
  },
  oldfiles = {
    prompt            = 'History❯ ',
    cwd_only          = false,
  },
  buffers = {
    -- previewer      = false,        -- disable the builtin previewer?
    prompt            = 'Buffers❯ ',
    file_icons        = false,         -- show file icons?
    color_icons       = false,         -- colorize file|git icons
    sort_lastused     = true,         -- sort buffers() by last used
    actions = {
      ["default"]     = actions.buf_edit,
      ["ctrl-s"]      = actions.buf_split,
      ["ctrl-v"]      = actions.buf_vsplit,
      ["ctrl-t"]      = actions.buf_tabedit,
      ["ctrl-x"]      = actions.buf_del,
    }
  },
  blines = {
    previewer         = "builtin",    -- set to 'false' to disable
    prompt            = 'BLines❯ ',
    actions = {
      ["default"]     = actions.buf_edit,
      ["ctrl-s"]      = actions.buf_split,
      ["ctrl-v"]      = actions.buf_vsplit,
      ["ctrl-t"]      = actions.buf_tabedit,
    }
  },
  colorschemes = {
    prompt            = 'Colorschemes❯ ',
    live_preview      = true,       -- apply the colorscheme on preview?
    actions = {
      ["default"]     = actions.colorscheme,
      ["ctrl-y"]      = function(selected) print(selected[1]) end,
    },
    winopts = {
      height          = 0.55,
      width           = 0.30,
    },
    post_reset_cb     = function()
      -- reset statusline highlights after
      -- a live_preview of the colorscheme
      -- require('feline').reset_highlights()
    end,
  },
  quickfix = {
    -- cwd               = vim.loop.cwd(),
    file_icons        = false,
    git_icons         = false,
  },
  lsp = {
    prompt            = '❯ ',
    -- cwd               = vim.loop.cwd(),
    cwd_only          = false,      -- LSP/diagnostics for cwd only?
    async_or_timeout  = true,       -- timeout(ms) or false for blocking calls
    file_icons        = false,
    git_icons         = false,
    lsp_icons         = false,
    severity          = "hint",
    icons = {
      ["Error"]       = { icon = "", color = "red" },       -- error
      ["Warning"]     = { icon = "", color = "yellow" },    -- warning
      ["Information"] = { icon = "", color = "blue" },      -- info
      ["Hint"]        = { icon = "", color = "magenta" },   -- hint
    },
  },
  -- uncomment to disable the previewer
  -- nvim = { marks    = { previewer = { _ctor = false } } },
  -- helptags = { previewer = { _ctor = false } },
  -- manpages = { previewer = { _ctor = false } },
  -- uncomment to set dummy win location (help|man bar)
  -- "topleft"  : up
  -- "botright" : down
  -- helptags = { previewer = { split = "topleft" } },
  -- uncomment to use `man` command as native fzf previewer
  -- manpages = { previewer = { _ctor = require'fzf-lua.previewer'.fzf.man_pages } },
  -- optional override of file extension icon colors
  -- available colors (terminal):
  --    clear, bold, black, red, green, yellow
  --    blue, magenta, cyan, grey, dark_grey, white
  -- padding can help kitty term users with
  -- double-width icon rendering
  file_icon_padding = '',
  file_icon_colors = {
    ["lua"]   = "blue",
  },
}
