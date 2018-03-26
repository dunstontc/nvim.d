if exists("b:current_syntax")
  finish
endif

if !exists("g:main_syntax")
  let g:main_syntax = 'html'
endif

runtime! syntax/gotmpl.vim
runtime! syntax/html.vim
unlet b:current_syntax

let b:current_syntax = "gohtml"

" vim: sw=2 ts=2 et
