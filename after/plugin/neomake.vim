scriptencoding utf-8

" if !exists('g:neomake_place_signs') || &cp || version < 700
"   finish
" endif

" When writing a buffer.
" call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after X ms).
call neomake#configure#automake('nw', 2000)

" Signcolumn
let g:neomake_place_signs = 1
" Signcolumn highlight
let g:neomake_highlight_columns = 0
" Highlight errors
let g:neomake_highlight_lines = 0
" This setting will echo the error for the line your cursor is on, if any.
" Default: 1
let g:neomake_echo_current_error=0
" Default: 1
let g:neomake_verbose = 0

" call neomake#configure#automake({
" \ 'TextChanged': {},
" \ 'InsertLeave': {},
" \ 'BufWritePost': {'delay': 0},
" \ 'BufWinEnter': {},
" \ }, 500)

" ✗ ✖ ◊ ➤ ● ℹ ⚠
let g:neomake_error_sign =   {'text': '✗', 'texthl': 'NeomakeErrorSign'}
let g:neomake_warning_sign = {'text': '●', 'texthl': 'NeomakeWarningSign' }
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSign' }
let g:neomake_info_sign =    {'text': 'ℹ', 'texthl': 'NeomakeInfoSign'}


" let g:neomake_cs_mcs_maker = {
"   \ 'args': ['@.mcs'],
"   \ 'errorformat': '%f(%l\,%c): %trror %m',
"   \ }

let g:neomake_cs_enabled_makers = ['mcs']
let g:neomake_go_enabled_makers = ['gometalinter']
let g:neomake_help_enabled_makers = ['vimhelplint']
let g:neomake_markdown_enabled_makers = []
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_yaml_enabled_makers = ['yamllint']
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

" let g:neomake_flake8_maker = {
"     \ 'errorformat': '%f:%l:%c: %m',
"     \ }

" All linters are only warnings, the go compiler will report errors
" let g:neomake_go_gometalinter_args = ['--disable-all', '--enable=errcheck', '--enable=megacheck', '--enable=maligned']
let g:neomake_go_gometalinter_args = ['--disable-all', '--enable=errcheck', '--enable=megacheck']
let g:neomake_go_gometalinter_errorformat = '%f:%l:%c:%t%*[^:]: %m'



" Thanks @blueyed
" shellcheck: ignore "Can't follow non-constant source."
" let $SHELLCHECK_OPTS='-e SC1090'
