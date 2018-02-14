scriptencoding utf-8
" ==============================================================================
" === Lightline === " {{{
" ==============================================================================


""
" @setting(g:lightline)
" Settings for itchyny/|lightline|
      " \ 'colorscheme': 'dark_plus',
let g:lightline = {
      \ 'separator':            { "left": " ", "right": " " },
      \ 'subseparator':         { "left": " ", "right": " " },
      \ 'tabline_separator':    { "left": " ", "right": " " },
      \ 'tabline_subseparator': { "left": " ", "right": " " },
      \ 'tabline': {
      \   'left':  [ [ 'buffers' ]],
      \   'right': [ [ 'gitbranch' ], ],
      \},
      \  'inactive': {
      \    'left': [ [ 'pending' ], ],
      \    'right': [],
      \},
      \  'active': {
      \    'left': [ [ "s",        'mode',  "s"                   ],
      \            [   'readonly', 'filename'                     ],
      \            [   'icon',     'fsize', "s", 'conflicted'     ],
      \            [   "s","s",    'anzu',  'paste', 'peest', "s" ] ],
      \    'right': [ [ 'cool_col' ],
      \               [ 'register', 'tabsize' ],
      \               [ "s", 'neomake_warnings', 'neomake_errors', "s", 'server_stat' ] ]
      \},
      \  'component': {
      \    "s"        : " ",
      \},
      \  'component_function': {
      \    'mode':            'Mode',
      \    'filename':        'lightline#Filename',
      \    'fsize':           'FileSize',
      \    'readonly':        'Readonly',
      \    'cool_col':        'PaddedStats',
      \    'gitbranch':       'GitInfo',
      \    'conflicted':      'ConflictedVersion',
      \    'highlite':        'StatuslineCurrentHighlight',
      \    'tabsize':         'TabSizing',
      \    'register':        'Register',
      \    'icon':            'Devicon',
      \    'pending':         'lightline#Pending',
      \    'anzu':            'anzu#search_status',
      \    'bufferinfo':      'lightline#buffer#bufferinfo',
      \    'deniteLN':        'DeniteLine',
      \    'deniteP':         'DenitePath',
      \    'server_stat':     'LanguageClient_statusLine',
      \},
      \ 'component_expand': {
      \   'linter_errors':    'lightline#AleWarnings',
      \   'linter_warnings':  'lightline#AleErrs',
      \   'neomake_errors':   'lightline#NeomakeErrs',
      \   'neomake_warnings': 'lightline#NeomakeWarnings',
      \   'peest':            'lightline#Pest',
      \   'buffers':          'lightline#bufferline#buffers',
      \},
      \ 'component_type': {
      \   'linter_warnings': 'warning',
      \   'linter_errors':   'error',
      \   'neomake_warnings':'warning',
      \   'neomake_errors':  'error',
      \   'linter_ok':       'ok',
      \   'peest':           'error',
      \   'buffercurrent':   'tabsel',
      \   'bufferbefore':    'raw',
      \   'bufferafter':     'raw',
      \   'buffers':         'tabsel',
      \},
      \}

" let g:lightline.mode_map = {
"     \ 'n' :     'NORMAL',
"     \ 'i' :     'INSERT',
"     \ 'R' :     'REPLACE',
"     \ 'v' :     'VISUAL',
"     \ 'V' :     'V-LINE',
"     \ "\<C-v>": 'V-BLOCK',
"     \ 'c' :     'COMMAND',
"     \ 's' :     'SELECT',
"     \ 'S' :     'S-LINE',
"     \ "\<C-s>": 'S-BLOCK',
"     \ 't':      'TERMINAL',
"     \ 'Rv' : 'V·Replace ',
"     \ 'no' : 'N·Operator Pending ',
"     \ 'cv' : 'Vim Ex ',
"     \ 'ce' : 'Ex ',
"     \ 'r'  : 'Prompt ',
"     \ 'rm' : 'More ',
"     \ 'r?' : 'Confirm ',
"     \ 'ci' : 'CMD-I ',
"     \ 'cr' : 'CMD-R ',
"     \ 'o'  : 'Pending',
"     \ 'sm' : 'SHOW-MATCH ',
"     \ '!'  : 'Shell ',
"     \ }


" 'asyncrun': '%{g:asyncrun_status}'
" ==============================================================================

let g:tcd_blacklist = '\v(cheat40|denite|gundo|help|nerdtree|netrw|peekaboo|quickmenu|startify|tagbar|undotree|unite|vimfiler|vimshell)'
let s:nbsp = ' '

let g:unite_force_overwrite_statusline = 0
let g:denite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
" }}}


" ==============================================================================
"  === mgee/lightline-bufferline === " {{{
" ==============================================================================

let g:lightline#bufferline#filename_modifier = ":t ".s:nbsp
let g:lightline#bufferline#modified          = "+ "
let g:lightline#bufferline#read_only         = ' '
let g:lightline#bufferline#more_buffers      = '...'
let g:lightline#bufferline#show_number       = 2
let g:lightline#bufferline#shorten_path      = 1
let g:lightline#bufferline#min_buffer_count  = 0
let g:lightline#bufferline#unnamed           = '[No Name]'
let g:lightline#bufferline#number_map        = {
\ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
\ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}
" let g:lightline#bufferline#number_map = {
" \ 0: '₀', 1: '₁', 2: '₂', 3: '₃', 4: '₄',
" \ 5: '₅', 6: '₆', 7: '₇', 8: '₈', 9: '₉'}
" }}}

" ==============================================================================

function! Mode() abort " {{{
  return
        \ expand('%:t') ==# 'ControlP'   ? 'CtrlP'    :
        \ expand('%:t') ==# 'peekaboo'   ? 'Peekaboo' :
        \ &filetype ==#     'cheat40'    ? 'Cheat40'  :
        \ &filetype ==#     'deol'       ? 'Deol'     :
        \ &filetype ==#     'denite'     ? lightline#includeDenite() :
        \ &filetype ==#     'fzf'        ? 'FZF'      :
        \ &filetype ==#     'gitcommit'  ? 'Fugitive' :
        \ &filetype ==#     'help'       ? 'Help'     :
        \ &filetype ==#     'neoterm'    ? 'NeoTerm'  :
        \ &filetype ==#     'nerdtree'   ? 'NERDTree' :
        \ &filetype ==#     'netrw'      ? 'netrw'    :
        \ &filetype ==#     'peekaboo'   ? 'Peekaboo' :
        \ &filetype ==#     'quickmenu'  ? 'Menu'     :
        \ &filetype ==#     'qf'         ? 'Quickfix' :
        \ &filetype ==#     'startify'   ? 'Startify' :
        \ &filetype ==#     'tagbar'     ? 'Tagbar'   :
        \ &filetype ==#     'unite'      ? 'Unite'    :
        \ &filetype ==#     'undotree'   ? 'UndoTree' :
        \ &filetype ==#     'vimfiler'   ? vimfiler#get_status_string() :
        \ &filetype ==#     'vimshell'   ? 'VimShell' :
        \ &filetype ==#     'goterm'     ? 'GoTerm'   :
        \ lightline#mode()
endfunction
" }}}


function lightline#includeDenite() " {{{
    let mode_str = substitute(denite#get_status_mode(), "-\\| ", "", "g")
    call lightline#link(tolower(mode_str[0]))
    return mode_str
  endfunction
" }}}

" ==============================================================================

function! lightline#Pest() abort " {{{
  if &paste
    return '----------PASTE----------PASTE----------PASTE----------PASTE----------'
  else
    return ''
  endif
endfunction
" }}}

""
" @public
" Returns the filename + &modified
function! lightline#Filename() abort " {{{
  let l:filename = expand('%:t') !=# '' ? expand('%:t') : ' '
  let l:modified = &modified ? ' + ' : ' '

  if &filetype ==# 'help'
    return ' ' . l:filename
  elseif &filetype ==# 'denite'
    return ' ' . denite#get_status_sources()
  elseif &filetype ==# 'tagbar'
    return ' '.g:lightline.fname
  else
    return &filetype !~# g:tcd_blacklist ? (' '.l:filename.''.l:modified) : " "
  endif
endfunction
" }}}

""
" @function(DenitePath)
" Returns the value of |denite#get_status_path()| with some added padding.
function! DenitePath() abort " {{{
  if &filetype ==# 'denite'
    let l:path = denite#get_status_path()
    let l:clean_path = substitute(l:path, '\([\|\]\)', '', 'g')
    return '  '.l:clean_path.' '
    " return '  '.denite#get_status_path().' '
  else
    return ''
  endif
endfunction
" }}}

""
" @function(DeniteLine)
" Returns the value of |denite#get_status_sources()| with some added padding.
function! DeniteLine() abort " {{{
  if &filetype ==# 'denite'
    return denite#get_status_sources().'  '
  else
    return ''
  endif
endfunction
" }}}

""
" @function(lighline#Pending)
" For inactive files, returns the full path and |&modified|.
function! lightline#Pending() abort " {{{
  let l:filename = expand('%F') !=# '' ? expand('%F') : ''
  let l:modified = &modified ? ' (+) ' : ''

  if &filetype == 'vimfiler'
    return vimfiler#get_status_string()
  else
    return &filetype !~# g:tcd_blacklist ? ('  '.l:filename.''.l:modified) : ' '
  endif
endfunction
" }}}

""
" @function(Readonly)
" In specific filetypes, above a specified width, returns the powerline readonly icon.
function! Readonly() abort " {{{
  return &readonly && &filetype !~# g:tcd_blacklist ? '  ' : ''
endfunction
" }}}

""
" @function(Register)
" In specific filetypes, above a specified width, returns the name of the currently selected register.
function! Register() abort " {{{
  return &filetype !~# g:tcd_blacklist && winwidth(0) > 70 ? '  '.v:register.'' : ' '
endfunction
" }}}

""
" @function(TabSizing)
" In specific filetypes, above a specified width, returns the current value of a tab.
function! TabSizing() abort " {{{
  return &filetype !~# g:tcd_blacklist && winwidth(0) > 70 ? ( '␉ ' . &shiftwidth . ' ') : ''
endfunction
" }}}

""
" @function(Devicon)
" In specific filetypes, above a specified width, returns the corresponding filetype icon.
function! Devicon()  " {{{
  return &filetype !~# g:tcd_blacklist && winwidth(0) > 70 ? ('['.&filetype.']') : ''
endfunction
" }}}

""
" @function(GitInfo)
" If the active file is in a git repository,
" returns the vaule of |fugitive#statusline()| and the powerline branch icon.
function! GitInfo()  " {{{
  let l:git = fugitive#head()
  let l:goot = substitute(l:git, '\([\|\]\)', '', 'g')
  if l:git !=? ''
    " return '  ' . fugitive#head().'   '
    return ' '.l:goot.'  '
  else
    return '  '
  endif
endfunction
" }}}

""
" @function(PaddedStats)
" Returns the current/total rows & columns with padding to keep the statusline from resizing.
function! PaddedStats() abort " {{{
  let l:column   = virtcol('.')
  let l:padCol   = ''
  let l:width    = virtcol('$')
  let l:padWidth = ''
  let l:row      = line('.')
  let l:padRow   = ''
  let l:height   = line('$')

  ""
  " Add trailing spaces to the column total.
  if strlen(l:width) == 3
    let l:padWidth = l:width
  elseif strlen(l:width) == 2
    let l:padWidth = l:width.' '
  else
    let l:padWidth = '0'.l:width.' '
  endif

  ""
  " Add leading spaces to the current column.
  if strlen(l:column) == 3
    let l:padCol = l:column
  elseif strlen(l:column) == 2
    let l:padCol = ' ' . l:column
  else
    let l:padCol = ' 0'.l:column
  endif

  ""
  " Add leading spaces to the current row.
  " FIXME: handle rows greater than 2 digits without making the rhs huge
  if (strlen(l:row) > 2)
    let l:padRow = l:row
  else
    let l:padRow = ' ' . l:row
  endif

  ""
  " Check the filetype and return all or some of our stable width values.
  if &filetype =~ '\v(cheat40|peekaboo|tagbar|undotree|vimfiler)'
    return ''
  elseif &filetype == 'denite'
    " return denite#get_status_path().' '
    " let l:path = denite#get_status_path()
    let l:clean_path = substitute(denite#get_status_path(), '\([\|\]\)', '', 'g')
    let l:cool_path = substitute(l:clean_path, expand($HOME), '~', 'g')
    return ''.l:cool_path.'   '
    " return ' '.substitute(denite#get_status_path(), '\([\|\]\)', '', 'g').'  '
  else
    return &filetype !~# g:tcd_blacklist && winwidth(0) > 70 ?
                         \ (' '.l:padRow.':'.l:height.' /'.l:padCol .':'.l:padWidth) :
                         \ ( l:padCol.':'.l:padRow.'/'.l:height.' ')
  endif
endfunction
" }}}

""
" @function(FileSize)
" Returns a human-readable filesize for active buffer.
function! FileSize() abort " {{{
  let l:bytes = getfsize(expand('%:p'))
  if (l:bytes >= 1024)
    let l:kbytes = l:bytes / 1024
  endif
  if (exists('l:kbytes') && l:kbytes >= 1000)
    let l:mbytes = l:kbytes / 1000
  endif

  if l:bytes <= 0
    return &filetype !~# g:tcd_blacklist ? ('0 B') : ''
  endif

  if (exists('l:mbytes'))
    return &filetype !~# g:tcd_blacklist && winwidth(0) > 70 ? (l:mbytes . ' MB') : ''
  elseif (exists('l:kbytes'))
    return &filetype !~# g:tcd_blacklist && winwidth(0) > 70 ? (l:kbytes . ' KB') : ''
  else
    return &filetype !~# g:tcd_blacklist && winwidth(0) > 70 ? (l:bytes . ' B') : ''
  endif
endfunction
" }}}

""
" @function(LangServStatus)
" Returns autozimu/LanguageClient-neovim StatusLine
" - LanguageClient_serverStatus()
"   - Get language server status. 0 for server idle. 1 for server busy.
" - LanguageClient_serverStatusMessage()
"   - Get a detail message of server status.
" - LanguageClient_statusLine()
"   - Example status line making use of LanguageClient_serverStatusMessage.
function! LangServStatus() abort " {{{
  let l:stat = LanguageClient_statusLine()
  return l:stat
endfunction
" }}}

augroup lightline#ale
  autocmd!
  autocmd User ALELint call lightline#update()
augroup END

function! lightline#AleWarnings() abort " {{{
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  " return l:counts.total == 0 ? '' : printf('◊ %d ', all_non_errors)
  return l:counts.total == 0 ? '' : printf('● %d ', all_non_errors)
endfunction
" }}}

function! lightline#AleErrs() abort " {{{
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('✗ %d', all_errors)
  " return l:counts.total == 0 ? '' : printf('● %d', all_errors)
endfunction
" }}}

function! lightline#AleOkay() abort " {{{
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓' : ''
endfunction
" }}}

" ==============================================================================
" `a:active here would reflect if the window is the current one.`
" let neomake_status_str = neomake#statusline#get(bufnr, {
"       \ 'format_running': '… ({{running_job_names}})',
"       \ 'format_loclist_ok':
"       \   (a:active ? '%#NeomakeStatusGood#' : '%*').'✓',
"       \ 'format_quickfix_ok': '',
"       \ 'format_quickfix_issues': (a:active ? '%s' : ''),
"       \ 'format_status': '%%(%s'
"       \   .(a:active ? '%%#StatColorHi2#' : '%%*')
"       \   .'%%)',
"       \ })

" let lightline#neomake_status_str = neomake#statusline#get(bufnr, {
"       \ 'format_running': '… ({{running_job_names}})',
"       \ 'format_loclist_ok': '✓',
"       \ 'format_quickfix_ok': '',
"       \ 'format_quickfix_issues': '%s',
"       \ })

augroup lightline#neomake
  autocmd!
  autocmd User NeomakeJobFinished call lightline#update()
augroup END

function! lightline#NeomakeErrs() " {{{
  " if !exists(":Neomake") || ((get(neomake#statusline#QflistCounts(), "E", 0) + get(neomake#statusline#LoclistCounts(), "E", 0)) == 0)
    " return ''
  " endif
  " let loclist_errs = get(neomake#statusline#LoclistCounts(), 'E', 0)
  " let qflist_errs = get(neomake#statusline#QflistCounts(), 'E', 0)
  " let total_errs = (loclist_errs + qflist_errs)
  " return total_errs == 0 ? '' : printf('✗ %d', total_errs)
  " return qflist_errs
  if (get(neomake#statusline#LoclistCounts(), 'E', 0) + get(neomake#statusline#QflistCounts(), 'E', 0)) >= 1
    return '✗ '.(get(neomake#statusline#LoclistCounts(), 'E', 0) + get(neomake#statusline#QflistCounts(), 'E', 0))
  else
    return '  '
  endif
endfunction
" }}}

function! lightline#NeomakeWarnings() " {{{
  " if !exists(":Neomake") || ((get(neomake#statusline#QflistCounts(), "W", 0) + get(neomake#statusline#LoclistCounts(), "W", 0)) == 0)
    " return ''
  " endif
  if (get(neomake#statusline#LoclistCounts(), 'W', 0) + get(neomake#statusline#QflistCounts(), 'W', 0)) >= 1
    return '● '.(get(neomake#statusline#LoclistCounts(), 'W', 0) + get(neomake#statusline#QflistCounts(), 'W', 0))
  else
    return '  '
  endif
endfunction
" }}}

