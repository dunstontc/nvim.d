"  ________   ___      ___ ___  ___ _________   ________  ________
" |\   ___  \|\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
" \ \  \\ \  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"  \ \  \\ \  \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"   \ \  \\ \  \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"    \ \__\\ \__\ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"     \|__| \|__|\|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|

scriptencoding utf-8

" ==============================================================================
"  Plugins
" ==============================================================================

call plug#begin('~/.local/share/nvim/plugged')


" UI: {{{
Plug 'junegunn/vim-peekaboo'
Plug 'dunstontc/lightline.vim'
Plug 'mgee/lightline-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/vimfiler.vim'
Plug 'romgrk/vimfiler-prompt', { 'on': 'VimFilerPrompt'}
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/vim-cursorword'
Plug 'blueyed/vim-diminactive'
Plug 'xtal8/traces.vim'
" Plug 'philip-karlsson/bolt.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'jszakmeister/vim-togglecursor'
" Plug 'thaerkh/vim-indentguides'
Plug '/Users/clay/Projects/GitHub/vim-vscode-theme'
" Plug 'dunstontc/vim-vscode-theme'
" }}}

" === Language Support === {{{

" Language Server {{{2
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'rev': 'next',
"     \ 'build': 'bash install.sh',
"     \ }
" }}}

" C: {{{
Plug '/Users/clay/.ghq/github.com/dunstontc/vim-cpp-enhanced-highlight', {'for': ['c', 'cpp', 'objc', 'objcpp']}
" }}}

" C# {{{
" Plug '/Users/clay/.ghq/github.com/dunstontc/omnisharp-vim', {'for': ['cs']}
Plug 'fsharp/vim-fsharp', {'for': ['fsharp']}
" }}}

" Java: {{{
" Plug 'dunstontc/kotlin-vim',    {'for': ['kotlin']}
" }}}

" JavaScript: {{{
Plug 'pangloss/vim-javascript',                {'for': ['javascript', 'typescript', 'jsx', 'tsx']}
" Plug 'othree/yajs.vim',                        {'for': ['javascript', 'jsx']}
" Plug 'othree/javascript-libraries-syntax.vim', {'for': ['javascript', 'jsx']}
" Plug 'heavenshell/vim-jsdoc',            {'for': ['javascript', 'typescript', 'jsx', 'tsx']}
" Plug 'othree/jsdoc-syntax.vim',          {'for': ['javascript', 'typescript', 'vue']}
Plug 'jparise/vim-graphql',              {'for': ['graphql']}
" Vue:
Plug 'posva/vim-vue',                    {'for': 'vue'}
" JSX:
" Plug 'mxw/vim-jsx',                      {'for': ['javascript', 'jsx', 'tsx']}
Plug 'neoclide/vim-jsx-improve',         {'for': ['javascript', 'jsx', 'tsx']}
" Plug 'MaxMEllon/vim-jsx-pretty',         {'for': ['javascript', 'jsx', 'tsx']}
" TypeScript:
Plug 'HerringtonDarkholme/yats.vim',     {'for': ['tsx', 'typescript']}
" CoffeeScript:
Plug 'kchmck/vim-coffee-script',         {'for': ['coff', 'coffee', 'cson']}
" JSON:
" Plug 'elzr/vim-json',                    {'for': ['json'                  ]}
Plug 'rhysd/vim-fixjson',                {'for': 'json' }
" }}}

" HTML CSS: {{{
" HTML:
Plug 'othree/html5.vim',                 {'for': ['html' ]}
Plug 'azakus/vim-webcomponents',         {'for': ['html']}
" CSS:
Plug 'hail2u/vim-css3-syntax',           {'for': ['css'  ]}
Plug 'groenewege/vim-less',              {'for': ['less' ]}
Plug 'wavded/vim-stylus',                {'for': ['styl', 'stylus']}
" Templates:
" Plug 'tpope/vim-haml',                   {'for': ['haml']}
" Plug 'lepture/vim-jinja',                {'for': ['jinja' ]}
" Plug 'digitaltoad/vim-pug',              {'for': ['jade', 'pug'], }
" Plug 'slim-template/vim-slim',           {'for': ['slim']}
Plug 'mustache/vim-mustache-handlebars', {'for': ['hbs', 'html']}
" }}}

" Go: {{{
Plug '/Users/clay/.ghq/github.com/dunstontc/vim-go',  {'for': 'go' }
" Plug 'jodosha/vim-godebug'
" Plug 'godoctor/godoctor.vim'
" }}}

" Lua: {{{
Plug 'tbastos/vim-lua',         {'for': ['lua']}
Plug 'VaiN474/vim-etlua',       {'for': ['lua']}
Plug 'VaiN474/vim-etlua-plain', {'for': ['ept']}
Plug 'leafo/moonscript-vim',    {'for': ['moon']}
" Plug 'xolox/vim-misc',         {'for': ['lua'  ]}
" Plug 'xolox/vim-lua-ftplugin', {'for': ['lua'  ]}
" }}}

" PHP: {{{
Plug 'tobyS/pdv',   {'for': 'php'}
Plug 'mxw/vim-xhp', { 'for': ['php', 'xhp']}
" }}}

" Python: {{{
Plug 'tweekmonster/impsort.vim',         {'for': 'python'}
Plug 'hynek/vim-python-pep8-indent',     {'for': 'python'  }
Plug '/Users/clay/.ghq/github.com/dunstontc/vim-pydocstring', {'for': 'python'}
" Plug 'python-mode/python-mode',          {'for': 'python'  }
" Plug 'davidhalter/jedi-vim',             {'for': 'python'  }
" }}}

" Ruby: {{{
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
" Plug 'tpope/vim-rails'
" }}}

" Writing: {{{
Plug 'lervag/vimtex',                    {'for': ['tex'  ]}
Plug 'jceb/vim-orgmode',                 {'for': ['org'  ]}
Plug 'tpope/vim-markdown',               {'for': ['markdown']}
" Plug 'nelstrom/vim-markdown-folding',    {'for': ['markdown']}
Plug 'tyru/markdown-codehl-onthefly.vim',{'for': ['markdown']}
" Plug 'plasticboy/vim-markdown',          {'for': ['md', 'markdown']}
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax',     {'for': ['md', 'md.pandoc', 'pandoc']}
" }}}

" Shell: {{{
Plug 'chrisbra/vim-zsh',  { 'for': 'zsh'}
Plug 'vim-perl/vim-perl', { 'for': 'perl'}
Plug 'dag/vim-fish',      { 'for': 'fish'}
Plug 'dunstontc/vim-ps1', { 'for': 'ps1'}
Plug 'dmix/elvish.vim',   { 'for': 'elvish'}

" }}}

" Swift: {{{
Plug 'gfontenot/vim-xcode'
Plug 'keith/swift.vim',         { 'for': 'swift' }
" }}}

" Config: {{{
Plug 'tmux-plugins/vim-tmux',   { 'for': 'tmux'}
Plug 'chrisbra/csv.vim',        { 'for': ['csv', 'tsv' ]}
Plug 'cespare/vim-toml',        { 'for': ['toml', 'tml']}
Plug 'chr4/nginx.vim',          { 'for': 'nginx'}
Plug 'ekalinin/Dockerfile.vim', { 'for': ['dockerfile']}
Plug 'pearofducks/ansible-vim'
" }}}

" Other: {{{
" Plug 'rhysd/vim-crystal',   {'for': ['crystal', 'cr' ]}
" Plug 'uarun/vim-protobuf',  {'for': ['proto']}
" Plug 'rust-lang/rust.vim',  {'for': ['rust', 'rs' ]}
" Plug 'jpalardy/vim-slime',  {'for': ['lisp', 'el' ]}
" Plug 'rhysd/vim-wasm',      {'for': ['wast'       ]}
" Plug 'peterhoeg/vim-qml',   {'for': ['qml']}
" Plug 'reasonml-editor/vim-reason-plus', {'for': ['reason']}
" }}}

" }}}

" === Linting === {{{
Plug 'sbdchd/neoformat'
Plug 'neomake/neomake',           {'do': 'make build/vimhelplint'}
Plug 'ternjs/tern_for_vim',       {'for': ['javascript']}
" }}}

" === Text Objects === {{{
" Plug 'wellle/targets.vim'
" Plug 'kana/vim-operator-user'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-entire'
Plug 'glts/vim-textobj-comment'
Plug 'michaeljsmith/vim-indent-object'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'Julian/vim-textobj-brace'
Plug 'Raimondi/vim_search_objects'
" }}}

" === Editing === {{{
" Plug 'tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'
Plug 'tyru/caw.vim'
Plug 'kana/vim-niceblock'
Plug 'joereynolds/place.vim'
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/vim-edgemotion'
" Plug 'machakann/vim-swap'
Plug 'valloric/matchtagalways',   {'for': ['html', 'xml']}
Plug 'AndrewRadev/splitjoin.vim', {'on': ['SplitjoinSplit', 'SplitjoinJoin']}
Plug 'AndrewRadev/switch.vim',    {'on': 'Switch'}
Plug 'dkarter/bullets.vim',       {'for' : ['gitcommit', 'markdown', 'rst', 'scratch', 'text', 'text', 'yaml']}
" }}}

" === Utilities === {{{
Plug '/usr/local/opt/fzf'
Plug '~/Projects/Vim/forks/fzf.vim'
Plug 'djoshea/vim-autoread'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
" Plug 'tpope/vim-endwise'
" Plug 'tpope/vim-abolish'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-speeddating'
Plug 'airblade/vim-rooter'
Plug 'pbrisbin/vim-mkdir'
Plug 'kopischke/vim-stay'
Plug 'duff/vim-bufonly', {'on': 'BufOnly'}
Plug 'mhinz/vim-sayonara'
Plug 'ervandew/supertab'
Plug 'airblade/vim-matchquote'
Plug 'justinmk/vim-sneak'
" Plug 'rhysd/clever-f.vim'
Plug 'Raimondi/delimitMate'
Plug 'sgur/vim-editorconfig'
" Plug 'tommcdo/vim-kangaroo'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nickeb96/vitality.vim'
" Plug 'embear/vim-localvimrc'
Plug 'ludovicchabant/vim-gutentags'
Plug 'lambdalisue/suda.vim'
Plug 'Shougo/context_filetype.vim'
" Plug 'Shougo/neossh.vim'
Plug 'Shougo/echodoc.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" }}}

" === Denite === {{{
Plug 'Shougo/unite.vim'
Plug '~/.ghq/github.com/dunstontc/denite.nvim'
Plug '~/.ghq/github.com/dunstontc/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'rafi/vim-denite-session'
" Plug 'lambdalisue/session.vim'
Plug 'mhartington/denite-neomake'
Plug 'yyotti/denite-marks'
Plug 'blankname/denite_fzf_matcher'
" }}}

" === Completion === {{{
Plug 'dunstontc/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
" Plug 'ujihisa/neco-look'
Plug 'SirVer/ultisnips'
Plug 'wellle/tmux-complete.vim'
Plug 'mattn/emmet-vim',               {'for': ['jsx', 'html', 'vue' ]}
" Plug 'zchee/deoplete-clang',         {'for': ['c', 'cpp', 'objc', 'objcpp']}
" Plug 'tweekmonster/deoplete-clang2', {'for': ['c', 'cpp', 'objc', 'objcpp']}
Plug 'Shougo/deoplete-clangx',        {'for': ['c', 'cpp', 'objc', 'objcpp']}
" Plug 'Rip-Rip/clang_complete',        {'for': ['c', 'cpp', 'objc', 'objcpp']}
Plug 'zchee/deoplete-jedi',           {'for': 'python'}
Plug 'zchee/deoplete-zsh',            {'for': 'zsh'}
" Plug 'zchee/deoplete-docker',         {'for': 'dockerfile'}
Plug 'ponko2/deoplete-fish',          {'for': 'fish'}
Plug 'carlitux/deoplete-ternjs',      {'for': ['jsx', 'javascript' ]}
Plug 'sebastianmarkow/deoplete-rust', {'for': 'rust'}
Plug 'fishbullet/deoplete-ruby',      {'for': 'ruby'}
Plug 'padawan-php/deoplete-padawan',  {'for': 'php'}
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'zchee/deoplete-go',             {'for': 'go', 'do':  'make'}
Plug 'fcpg/vim-complimentary',        {'for': 'vim'}  " Complimentary improves the completion of VimL builtin functions, commands, variables and options.
" Plug 'cyansprite/deoplete-omnisharp', {'for': 'cs'}
" Plug '1995eaton/vim-better-javascript-completion'
" }}}

" === Misc === {{{
Plug 'mattn/webapi-vim'
Plug 'wakatime/vim-wakatime'
" Plug 'skywind3000/asyncrun.vim'
" }}}

" === Version Control === {{{
" Plug 'lambdalisue/gina.vim'
" Plug 'gregsexton/gitv'
" Plug 'rhysd/committia.vim'
" Plug 'idanarye/vim-merginal'
" Plug 'elstgav/branch-manager'
" Plug 'jreybert/vimagit', { 'on': 'Magit' }
" Plug 'christoomey/vim-conflicted'
" Plug 'chrisbra/vim-diff-enhanced'
" }}}

" === Search And Replace === {{{
" Plug 'mileszs/ack.vim'
Plug 'osyo-manga/vim-anzu'
" Plug 'haya14busa/is.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk'
" Plug 'brooth/far.vim'
" Plug 'dyng/ctrlsf.vim'
" Plug 'pelodelfuego/vim-swoop'
" }}}

" === Lazy === {{{
Plug 'ciaranm/securemodelines'
Plug 'frioux/vim-regedit'
Plug 'Shougo/junkfile.vim'
Plug 'Shougo/vinarise.vim',           { 'on': 'Vinarise'}
Plug 'Shougo/deol.nvim',              { 'on': 'Deol'}
Plug 'tweekmonster/startuptime.vim'
Plug 'tyru/capture.vim',              { 'on': 'Capture'}
Plug 'chrisbra/Colorizer',            { 'on': 'ColorToggle'}
Plug 'dhruvasagar/vim-table-mode',    { 'on': 'TableModeToggle'}
Plug 'majutsushi/tagbar',             { 'on': 'TagbarToggle'}
Plug 'mbbill/undotree'
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity']}
Plug 'junegunn/gv.vim',               { 'on': 'GV'}
Plug 'guns/xterm-color-table.vim',    { 'on': 'XtermColorTable'}
" }}}

" === Local === {{{
Plug '/Users/clay/Projects/Vim/me/tcd'
Plug '~/Projects/Vim/me/projectile.nvim'
Plug '/Users/clay/.ghq/github.com/dunstontc/lightline.vim'
" Plug '/Users/clay/.ghq/github.com/dunstontc/YUNOcommit.vim')
Plug '~/.ghq/github.com/dunstontc/vison',           {'for': ['json']}
Plug '~/.ghq/github.com/dunstontc/syntax-vim-ex',   {'for': 'vim'}
Plug '~/.ghq/github.com/dunstontc/python-syntax',   {'for': ['py', 'python']}
Plug '~/.ghq/github.com/dunstontc/vim-startify'
" }}}

call plug#end()

filetype plugin indent on
syntax on
set nocompatible

" ==============================================================================
" === Disable standard plugins === {{{
let g:loaded_2html_plugin      = 'none'
let g:loaded_logiPat           = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_gzip              = 1
let g:loaded_man               = 1
let g:loaded_matchit           = 1
" let g:loaded_matchparen        = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_rrhelper          = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_tarPlugin         = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_zipPlugin         = 1
" }}}

" ==============================================================================
" === Javascript === {{{
" ==============================================================================
let g:xml_syntax_folding = 0
" (mxw/vim-jsx)
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0

" (MaxMEllon/vim-jsx-pretty)
let g:vim_jsx_pretty_enable_jsx_highlight = 1
" Extra highlighting with pangloss/vim-javascript.
let g:vim_jsx_pretty_colorful_config = 1

" === tern-for-vim ===
let g:tern_request_timeout = 1
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
" let g:tern_show_signature_in_pum = '0'  " Disable full signature type on autocomplete
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]
" }}}

" ==============================================================================
"  === davidhalter/jedi-vim === {{{
" ==============================================================================
let g:python_highlight_all=1
let g:python_highlight_file_headers_as_comments = 0
let g:jedi#auto_initialization=1
let g:jedi#auto_vim_configuration=0
" let g:jedi#use_splits_not_buffers='left'
let g:jedi#popup_on_dot=1
let g:jedi#popup_select_first=0
let g:jedi#show_call_signatures=0
let g:jedi#completions_enabled=0
let g:jedi#auto_close_doc=0

let g:jedi#goto_command = ''
" let g:jedi#goto_command = '<leader>d'
let g:jedi#goto_assignments_command = ''
" let g:jedi#goto_assignments_command = '<leader>g'
let g:jedi#goto_definitions_command = ''
" let g:jedi#documentation_command = ''
let g:jedi#documentation_command = '<leader>?'
let g:jedi#usages_command = ''
" let g:jedi#usages_command = '<leader>n'
let g:jedi#completions_command = ''
" let g:jedi#completions_command = '<C-Space>'
let g:jedi#rename_command = ''
" let g:jedi#rename_command = '<leader>r'

" }}}

" ==============================================================================
"  === fatih/vim-go === {{{
" ==============================================================================
" let g:go_auto_sameids = 0
" let g:go_snippet_engine = 'ultisnips'
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']
" Adds custom text objects.
" Default: 1
let g:go_textobj_enabled = 1
" Consider the comment above a function to be part
" of the function when using
" the `af` text object and `[[` motion.
" Defualt: 1
let g:go_textobj_include_function_doc = 1
" Consider the variable of an function assignment to be part of the anonymous
" function when using the `af` text object.
" Default: 1
let g:go_textobj_include_variable = 1
" Use this option to auto |:GoMetaLinter| on save.
" Default: 0
let g:go_metalinter_autosave = 0
let g:go_metalinter_enabled = []
let g:go_metalinter_autosave_enabled = []
" Use this option to auto |:GoFmt| on save.
" Default: 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'gofmt'
let g:go_fmt_options = {}
" This experimental mode is superior to the current mode
" as it fully saves the undo history, so undo/redo doesn't break.
" Default: 0
let g:go_fmt_experimental = 1
" Use this option to disable showing a location list
" when |'g:go_fmt_command'| fails.
" Default: 0
let g:go_fmt_fail_silently = 1
" Use this option to run `godoc` on words under the cursor with |K|; this will
" normally run the `man` program, but for Go using `godoc` is more idiomatic.
" Default: 1
" let g:go_doc_keywordprg_enabled = 0
" Use this option to show the identifier information when completion is done.
" Defualt: 1
let g:go_echo_command_info = 1
" Use this option to show the identifier information when completion is done.
" By default it's enabled
let g:go_echo_go_info = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_arguments = 0
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_space_tab_error = 1
" }}}

