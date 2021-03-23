local Color, c, Group, g, s = require("colorbuddy").setup()
local no = s.NONE

if vim.o.background == 'dark' then
  Color.new('syntax_bg', "#2c313a") -- defualt: 282c34
  Color.new('syntax_cursor', "#282c34") -- default: 2c323c
  Color.new('vertsplit', "#3b4048") -- default: 181a1f
end

-- Hide tildes
Group.new('EndOfBuffer',  c.syntax_bg,    c.syntax_bg,      no)
Group.new('ColorColumn',  c.none,         c.syntax_cursor,  no)

-- nvim-tree indent marker color
Group.new('NvimTreeIndentMarker', c.vertsplit, c.none, no)

-- vim-one color overrides
-- vim.cmd([[
--   if &background == "dark"
--     call one#highlight("VertSplit", "3b4048", "", "")
--     call one#highlight("Normal", "", "2c323c", "")
--     call one#highlight("NormalDark", "", "21252c", "")
--     call one#highlight("ColorColumn", "", "282c34", "")
--     call one#highlight("Folded", "a0a1a7", "2c323c", "none")
--     call one#highlight("FoldColumn", "333333", "333333", "none")

--     call one#highlight("NERDTreeFile", "", "282c34", "")

--     call one#highlight("FZFfg", "", "2c323c", "")
--     call one#highlight("FZFbg", "", "282c34", "")
--   else

--     call one#highlight("Normal", "", "ececec", "")
--     call one#highlight("ColorColumn", "", "f9f9f9", "")

--     call one#highlight("CursorLine", '', 'ececec',  'none')
--     call one#highlight("NormalDark", "", "ececec", "")
--   endif

--   hi SignColumn guibg=NONE

--   hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
-- ]])
