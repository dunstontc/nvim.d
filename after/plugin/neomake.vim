" if !exists('g:neomake_place_signs') || &cp || version < 700
"   finish
" endif

" When writing a buffer.
call neomake#configure#automake('w')

let g:neomake_place_signs = 1
let g:neomake_highlight_columns = 1
let g:neomake_highlight_lines = 0

" ✗ ✖ ◊ ➤ ● ℹ ⚠
let g:neomake_error_sign =   {'text': '✗', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '●', 'texthl': 'NeomakeWarningSign' }
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign' }
let g:neomake_info_sign =    {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}

let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_vim_enabled_makers = ['vint']

" let g:neomake_make_maker = {
"     \ 'exe': 'make',
"     \ 'args': ['--build'],
"     \ 'errorformat': '%f:%l:%c: %m',
"     \ }

" let g:neomake_vint_maker = {
"     \ "args": [
"         \ '--style-problem', '--no-color', '--enable-neovim',
"         \ '-f', '{file_path}:{line_number}:{column_number}:{severity}:{description} ({policy_name})'],
"     \ 'errorformat': '%f:%l:%c: %m',
"     \ }


" Thanks @blueyed
" shellcheck: ignore "Can't follow non-constant source."
let $SHELLCHECK_OPTS='-e SC1090'
