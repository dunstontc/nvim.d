" let g:go_auto_sameids = 0
let g:go_snippet_engine = 'ultisnips'
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
" Adds custom text objects.
" Default: 1
let g:go_textobj_enabled = 1
" Consider the comment above a function to be part
" of the function when using
" the `af` text object and `[[` motion.
" Defualt: 1
let g:go_textobj_include_function_doc = 1
" Consider the variable of an function assignment
" to be part of the anonymous
" function when using the `af` text object.
" Default: 1
let g:go_textobj_include_variable = 1
" Use this option to auto |:GoMetaLinter| on save.
" Default: 0
let g:go_metalinter_autosave = 0
let g:go_metalinter_enabled = []
" Use this option to auto |:GoFmt| on save.
" Default: 1
let g:go_fmt_autosave = 0
let g:go_fmt_command = 'gofmt'
let g:go_fmt_options = {}
" Use this option to disable showing a location list
" when |'g:go_fmt_command'| fails.
" Default: 0
let g:go_fmt_fail_silently = 1
" Use this option to run `godoc` on words under the cursor with |K|; this will
" normally run the `man` program, but for Go using `godoc` is more idiomatic.
" Default: 1
let g:go_doc_keywordprg_enabled = 0

" Use this option to show the identifier information when completion is done.
" Defualt: 1
let g:go_echo_command_info = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_space_tab_error = 1
