" Requires AdvancedSorters | http://www.vim.org/scripts/script.php?script_id=4958
"function! AlphabetizeRAML(spaces) range
"  let pattern = '/^\ \{' . a:spaces . '}\//'
"  silent! execute a:firstline.','.a:lastline."SortRangesByHeader " . pattern
"endfunction
"
"command! -range=% -nargs=1 AR <line1>,<line2>call AlphabetizeRAML(<f-args>)

