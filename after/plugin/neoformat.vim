let g:neoformat_only_msg_on_error = 1

" Run all enabled formatters
" (by default Neoformat stops after the first formatter succeeds)
let g:neoformat_run_all_formatters = 0

" exe       the name the formatter executable in the path  n/a  required
" args      list of arguments  []  optional
" replace   overwrite the file, instead of updating the buffer  0  optional
" stdin     send data to the stdin of the formatter  0  optional
" no_append do not append the path of the file to the formatter command, used when the path is in the middle of a command  0  optional
" env       list of environment variable definitions to be prepended to the formatter command  []  optional

" let g:neoformat_python_autopep8 = {
"             \ 'exe': 'autopep8',
"             \ 'args': ['-s 4', '-E'],
"             \ 'replace': 1,
"             \ 'stdin': 1,
"             \ 'env': ["DEBUG=1"],
"             \ 'no_append': 1,
"             \ }

let g:neoformat_enabled_json = ['fixjson']

