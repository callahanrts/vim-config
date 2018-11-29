
" vim-one color overrides
if &background == "dark"
  " call one#highlight("VertSplit", "2c323c", "", "")
  call one#highlight("VertSplit", "3b4048", "", "")
  call one#highlight("Normal", "", "2c323c", "")
  call one#highlight("NormalDark", "", "21252c", "")
  call one#highlight("ColorColumn", "", "282c34", "")
  call one#highlight("Folded", "a0a1a7", "2c323c", "none")
  call one#highlight("FoldColumn", "333333", "333333", "none")

  call one#highlight("NERDTreeFile", "", "282c34", "")

  " FZF Overrides
  call one#highlight("FZFfg", "", "2c323c", "")
  call one#highlight("FZFbg", "", "282c34", "")
else

  call one#highlight("Normal", "", "ececec", "")
  call one#highlight("ColorColumn", "", "f9f9f9", "")

  call one#highlight("CursorLine", '', 'ececec',  'none')
  call one#highlight("NormalDark", "", "ececec", "")
endif


" Hide Tildes
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg
