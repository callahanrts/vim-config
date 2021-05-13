if exists('g:pageline_loaded')
  finish
endif
let g:pageline_loaded = 1

command PagelineDoSomething :call pageline#do_something()
