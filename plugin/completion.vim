scriptencoding utf-8

" ==============================================================================
" === Shougo/deoplete === {{{
" ==============================================================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_list = 500
let g:deoplete#max_abbr_width = 55
let g:deoplete#max_menu_width = 75
let g:deoplete#auto_complete_delay = 150
let g:deoplete#auto_refresh_delay = 1000
let g:deoplete#enable_refresh_always = 1

let g:deoplete#disable_auto_complete = 0
let g:deoplete#auto_completion_start_length = 1

let g:deoplete#enable_camel_case  = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case  = 1
let g:deoplete#min_keyword_length = 1
let g:deoplete#min_pattern_length = 1
let g:deoplete#sources#syntax#min_keyword_length = 1

let g:deoplete#keyword_patterns = {}
" let g:deoplete#keyword_patterns._ = '[a-zA-Z_]\k*\(?'
" let g:deoplete#keyword_patterns.tex = '\\?[a-zA-Z_]\w*'
let g:deoplete#keyword_patterns.tex = '[^\w|\s][a-zA-Z_]\w*'

let g:deoplete#omni#input_patterns = {}
let g:deoplete#omni#input_patterns.python = ''
let g:deoplete#omni#functions = {}

" let g:deoplete#skip_chars = ['(', ')', '<', '>']

" let g:deoplete#ignore_sources =
" let g:deoplete#file#enable_buffer_path = 1
" let g:deoplete#buffer#require_same_filetype=0
" let g:deoplete#omni#input_patterns =
" let g:deoplete#omni_patterns =
" let g:context_filetype#same_filetypes=0
let g:deoplete#file#enable_buffer_path = 1

"  deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
call deoplete#custom#source('_', 'matchers', ['matcher_fuzzy'])
call deoplete#custom#source('_', 'min_pattern_length', 0)
call deoplete#custom#source('go', 'min_pattern_length', 1)
" call deoplete#custom#source('_', 'sorters', ['sorter_word'])
" call deoplete#custom#source('_', 'sorters', ['sorter_rank'])

" ⌁ ⌘ ℬ'
call deoplete#custom#source('vim',            'mark', '' )
call deoplete#custom#source('tag',            'mark', '⌦' )
call deoplete#custom#source('webcomplete',    'mark', '' )
call deoplete#custom#source('omni',           'mark', '⌾' )
call deoplete#custom#source('file',           'mark', '' )
call deoplete#custom#source('look',           'mark', '' )
call deoplete#custom#source('go',             'mark', '' )
" call deoplete#custom#source('jedi',           'mark', '' )
" call deoplete#custom#source('Jedi',           'mark', '' )
call deoplete#custom#source('tern',           'mark', '' )
call deoplete#custom#source('emoji',          'mark', '' )
call deoplete#custom#source('around',         'mark', '↻' )
call deoplete#custom#source('buffer',         'mark', '' )
call deoplete#custom#source('dictionary',     'mark', '' )
call deoplete#custom#source('member',         'mark', '.' )
call deoplete#custom#source('necovim',        'mark', '' )
call deoplete#custom#source('ultisnips',      'mark', ' ')
call deoplete#custom#source('neosnippet',     'mark', ' ')
call deoplete#custom#source('necosyntax',     'mark', '♯' )
call deoplete#custom#source('tmux-complete',  'mark', '⧉ ')
call deoplete#custom#source('LanguageClient', 'mark', '⌾' )

" call deoplete#custom#source('jedi',          'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('necovim',       'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('ultisnips',     'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('necosyntax',    'matchers', ['matcher_fuzzy'])
" call deoplete#custom#source('tmux-complete', 'matchers', ['matcher_fuzzy'])

call deoplete#custom#source('emoji',      'filetypes', ['gitcommit', 'markdown', 'org', 'rst', 'txt', 'todo'])
call deoplete#custom#source('dictionary', 'filetypes', ['gitcommit', 'markdown', 'org', 'rst', 'txt', 'todo'])




" Default rank is 100, higher is better.
call deoplete#custom#source('LanguageClient', 'rank', 800)
call deoplete#custom#source('go',             'rank', 700)
" call deoplete#custom#source('TernJS',         'rank', 700)
call deoplete#custom#source('tern',           'rank', 700)
call deoplete#custom#source('jedi',           'rank', 700)
call deoplete#custom#source('padawan',        'rank', 700)
call deoplete#custom#source('omni',           'rank', 600)     " Default: 500
call deoplete#custom#source('file',           'rank', 650)     " Default: 150
call deoplete#custom#source('ultisnips',      'rank', 550)
call deoplete#custom#source('neosnippet',     'rank', 550)
call deoplete#custom#source('member',         'rank', 500)     " Default: 100
call deoplete#custom#source('tmux-complete',  'rank', 500)
call deoplete#custom#source('file_include',   'rank', 420)
call deoplete#custom#source('tag',            'rank', 400)     " Default: 100
call deoplete#custom#source('around',         'rank', 330)     " Default: 800
call deoplete#custom#source('dictionary',     'rank', 310)     " Default: 100
call deoplete#custom#source('buffer',         'rank', 300)     " Default: 100
call deoplete#custom#source('vim',            'rank', 200)
call deoplete#custom#source('syntax',         'rank', 200)


" function! Multiple_cursors_before()
"   let b:deoplete_disable_auto_complete=2
" endfunction
" function! Multiple_cursors_after()
"   let b:deoplete_disable_auto_complete=0
" endfunction

" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" inoremap <expr><C-d> deoplete#undo_completion()
" inoremap <expr><C-d>  deoplete#close_popup()


" call deoplete#custom#set('_', 'converters', [
"   \ 'converter_remove_paren',
"   \ 'converter_remove_overlap',
"   \ 'converter_truncate_abbr',
"   \ 'converter_truncate_menu',
"   \ 'converter_auto_delimiter',
"   \ ])

" }}}

" ==============================================================================
"  === Shougo/echodoc === {{{
let g:echodoc#enable_at_startup = 1
" The documentation display type.
"echo": It uses the command line |:echo|.
"signature": It uses gonvim signature feature.
let g:echodoc#type='echo'
" let g:echodoc#type='signature'
let g:echodoc#highlight_identifier = "Identifier"
let g:echodoc#highlight_arguments = "String"
" }}}

" ==============================================================================
" === dictionary === {{{
call deoplete#custom#source('dictionary', 'min_pattern_length', 2)
" Remove this if you'd like to use fuzzy search
" call deoplete#custom#source('dictionary', 'matchers', ['matcher_head'])
" If dictionary is already sorted, no need to sort it again.
" call deoplete#custom#source('dictionary', 'sorters', [])
" }}}

" ==============================================================================
"  === Shougo/neco-syntax === {{{
let g:necosyntax#min_keyword_length=1
let g:necosyntax#max_syntax_line=1000
" }}}

" ==============================================================================
"  === zchee/deoplete-jedi === {{{
" The timeout (in seconds) for jedi server to workaround endless loop in jedi.
" Increase it if you cannot get completions for large package such as pandas (see #125).
" Default: 10
let g:deoplete#sources#jedi#server_timeout = 10
" Sets the maximum length of completion description text.
" If this is exceeded, a simple description is used instead.
" Default: 50
let g:deoplete#sources#jedi#statement_length = 50
" Enables caching of completions for faster results.
" Default: 1
let g:deoplete#sources#jedi#enable_cache = 1
" Shows docstring in preview window.
" Default: 0
let g:deoplete#sources#jedi#show_docstring = 1
" Set the Python interpreter path to use for the completion server.
" deoplete-jedi uses the first available python in $PATH.
" Use this only if you want use a specific Python interpreter.
" This has no effect if $VIRTUAL_ENV is present in the environment.
" Note: This is completely unrelated to configuring Neovim.
" let g:deoplete#sources#jedi#python_path =
" Enable logging from the server.
" If set to 1, server messages are emitted to Deoplete's log file.
" This can optionally be a string that points to a file for separate logging.
" The log level will be inherited from deoplete#enable_logging().
" let g:deoplete#sources#jedi#debug_server =
" A list of extra paths to add to sys.path when performing completions.
" let g:deoplete#sources#jedi#extra_path =
" TODO: find out where i got `g:deoplete#sources#jedi#short_types` from...
" let g:deoplete#sources#jedi#short_types      = 1
" }}}

" ==============================================================================
" === zchee/deoplete-go === {{{
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" Automatically insert dot after package name
" Default: 0
let g:deoplete#sources#go#package_dot = 1
" Class Sorting and Ignore
" Default: []
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" Support pointer match
" Default: 0
" let g:deoplete#sources#go#pointer = 0
" cgo complete use libclang-python3
" Default: 0
" let g:deoplete#sources#go#cgo = 0
" let g:deoplete#sources#go#cgo#libclang_path
" Automatically set GOOS environment variable when calling gocode
" let g:deoplete#sources#go#goos = ''

" }}}

" ==============================================================================
" === padawan-php/deoplete-padawan === {{{
let g:deoplete#sources#padawan#server_addr = 'http://127.0.0.1:15155'
let g:deoplete#sources#padawan#server_command = 'padawan-server'
let g:deoplete#sources#padawan#composer_command = 'composer'
let g:deoplete#sources#padawan#log_file = '/tmp/padawan-server.log'
let g:deoplete#sources#padawan#server_autostart = 1
let g:deoplete#sources#padawan#add_parentheses = 0
let g:deoplete#sources#padawan#auto_update = 0
" }}}

" ==============================================================================
" === Shougo/neosnippet.vim === {{{
let g:neosnippet#disable_runtime_snippets = {
  \   '_' : 1,
  \ }

" let g:neosnippet#disable_runtime_snippets=1
let g:neosnippet#snippets_directory='~/.dotfiles/editors/nvim/nsnipz'

" let g:neosnippet#scope_aliases = {}
" let g:neosnippet#scope_aliases['ruby'] = 'ruby,ruby-rails'

" let g:neosnippet#enable_snipmate_compatibility=1
" let g:neosnippet#enable_conceal_markers=0
" let g:neosnippet#expand_word_boundary=0
" let g:neosnippet#enable_completed_snippet=1

" imap <C-n>     <Plug>(neosnippet_expand_or_jump)
" imap <C-a>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets' behavior.
" imap <expr><TAB>
"   \ pumvisible() ? "\<C-n>" :
"   \ neosnippet#expandable_or_jumpable() ?
"   \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"   \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" Expand the completed snippet trigger by <CR>.
"imap <Expandxpr><CR>
"\ (pumvisible() && neosnippet#expandable()) ?
"\ "\<Plug>(neosnippet_expand)" : "\<CR>"

" For conceal markers.
" if has('conceal')
"  set conceallevel=2 concealcursor=niv
" endif

" " Expand snippets on tab if snippets exists, otherwise do autocompletion
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"   \ "\<Plug>(neosnippet_expand_or_jump)"
"   \ : pumvisible() ? "\<C-n>" : "\<TAB>"
" " If popup window is visible do autocompletion from back
" imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" " Fix for jumping over placeholders for neosnippet
" smap <expr><TAB> neosnippet#jumpable() ?
"   \ "\<Plug>(neosnippet_jump)"
"   \: "\<TAB>"
" }}}

" ==============================================================================
" === Ultisnips === {{{
let g:UltiSnipsUsePythonVersion    = 3
let g:UltiSnipsExpandTrigger       = '<tab>'
let g:UltiSnipsJumpForwardTrigger  = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories  = ['snipz']
" Options: normal, doxygen, sphinx, google, numpy, or jedi
let g:ultisnips_python_style       = 'numpy'
let g:ultisnips_python_quoting_style = 'single'
let g:ultisnips_python_triple_quoting_style = 'double'
" let g:UltiSnipsSnippetsDir             = '$HOME/.dotfiles/editors/nvim/snipz'
" let g:UltiSnipsListSnippets            = '<c-n>'
" let g:UltiSnipsJumpForwardTrigger      = '<c-n>'
" let g:UltiSnipsJumpBackwardTrigger     = '<c-p>'

" inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<TAB>"
" }}}

" ==============================================================================
" === tern-for-vim === {{{
let g:tern_request_timeout = 1
" let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
"Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]

let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
" }}}

" ==============================================================================
" === carlitux/deoplete-ternjs === {{{

" Set bin if you have many instalations
" let g:deoplete#sources#ternjs#tern_bin = '/path/to/tern_bin'

let g:deoplete#sources#ternjs#timeout = 1

" Whether to include the types of the completions in the result data.
" Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance
" (in scopes for variables,
" in prototypes for properties)
" between the completions and the origin position in result data.
" Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
let g:deoplete#sources#ternjs#docs = 1

" When on, only completions that match the current word
" at the given point will be returned.
" Turn this off to get all results,
" so that you can filter on the client side.
" Default: 1
let g:deoplete#sources#ternjs#filter = 1

" Whether to use a case-insensitive compare between
" the current word and potential completions.
" Default: 0
let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found,
" Tern will use some heuristics to try and return some properties anyway.
" Set this to 0 to turn that off.
" Default: 1
let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted.
" Default: 1
let g:deoplete#sources#ternjs#sort = 0

" When disabled, only the text before the given position is considered part of the word.
" When enabled, the whole variable name that the cursor is on will be included.
" Default: 1
let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype
" unless they have been spelled out by at least two characters.
" Default: 1
let g:deoplete#sources#ternjs#omit_object_prototype = 1

" Whether to include JavaScript keywords when
" completing something that is not a property.
" Default: 0
let g:deoplete#sources#ternjs#include_keywords = 0

" If completions should be returned when inside a literal.
" Default: 1
let g:deoplete#sources#ternjs#in_literal = 0


"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]
" }}}

" ==============================================================================
"  === tenfyzhong/CompleteParameter.vim === {{{
" inoremap <silent><expr> ( complete_parameter#pre_complete("()")
" smap <c-n> <Plug>(complete_parameter#goto_next_parameter)
" imap <c-n> <Plug>(complete_parameter#goto_next_parameter)
" smap <c-p> <Plug>(complete_parameter#goto_previous_parameter)
" imap <c-p> <Plug>(complete_parameter#goto_previous_parameter)

" let g:complete_parameter_log_level = 5
" let g:complete_parameter_use_ultisnips_mapping = 1
" }}}

" ==============================================================================
"  === wellle/tmux-complete.vim === {{{
let g:tmuxcomplete#trigger = ''
" }}}

" ==============================================================================
"  === delimitMate === {{{
let g:delimitMate_expand_cr=1
let g:delimitMate_expand_space=1
" }}}

" ==============================================================================
"  === Emmet === {{{
let g:user_emmet_install_global = 0
" " let g:user_emmet_leader_key='<Plug>(emmet_expand)'
" " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"
" "  https://github.com/mhartington/dotfiles/blob/master/config/nvim/init.vim
" " Remapping <C-y>, just doesn't cut it.
" " 𐌄 = ⇧ + ENTER
"   function! s:expand_html_tab()
" " try to determine if we're within quotes or tags.
" " if so, assume we're in an emmet fill area.
"    let line = getline('.')
"    if col('.') < len(line)
"      let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
"      if len(line) >= 2
"         return "\<C-n>"
"      endif
"    endif
" " expand anything emmet thinks is expandable.
"   if emmet#isExpandable()
"     return emmet#expandAbbrIntelligent("\<tab>")
"     " return "\<C-y>,"
"   endif
" " return a regular tab character
"   return "\<tab>"
"   endfunction
"   " let g:user_emmet_expandabbr_key='<Tab>'
"   " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"
"   autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
"   let g:user_emmet_mode='a'
"   let g:user_emmet_complete_tag = 0
"   let g:user_emmet_install_global = 0
"   autocmd FileType html,css,scss EmmetInstall
" }}}

" ==============================================================================
" === SuperTab === {{{
" let g:SuperTabContextDefaultCompletionType = '<c-n>'
let g:SuperTabDefaultCompletionType = '<C-n>'
" let g:SuperTabCrMapping                = 0

" inoremap <expr> <cr>    pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
" inoremap <expr> <tab>   pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" }}}

" ==============================================================================
"  === https://www.reddit.com/r/vim/comments/4gjbqn/what_tricks_do_you_use_instead_of_popular_plugins/d2iatu9/ ===
" ==============================================================================
" cnoremap <expr> <Tab>   getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>/<C-r>/" : "<C-z>"
" cnoremap <expr> <S-Tab> getcmdtype() == "/" \|\| getcmdtype() == "?" ? "<CR>?<C-r>/" : "<S-Tab>"
