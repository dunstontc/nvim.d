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
Plug 'mhinz/vim-startify'        " The fancy start screen for Vim.
Plug 'junegunn/vim-peekaboo'     " Show the contents of registers on a sidebar.
Plug 'dunstontc/lightline.vim'   " A light and configurable statusline/tabline
" Plug 'itchyny/lightline.vim'   " A light and configurable statusline/tabline plugin for Vim.
Plug 'mgee/lightline-bufferline' " Display the list of buffers in the lightline.vim plugin.
Plug 'airblade/vim-gitgutter'    " Shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'Shougo/vimfiler.vim'       " File explorer implemented by Vim script
Plug 'romgrk/vimfiler-prompt', { 'on': 'VimFilerPrompt'}
Plug 'ryanoasis/vim-devicons'  " Adds file type glyphs/icons to popular Vim plugins.
Plug 'itchyny/vim-cursorword'  " Underlines the word under the cursor.
Plug 'blueyed/vim-diminactive' " Dim inactive windows.
Plug 'xtal8/traces.vim'        " Range, pattern and substitute preview for Vim.
" Plug 'jszakmeister/vim-togglecursor' " Toggle the cursor shape in the terminal for Vim.
" Plug 'dunstontc/vim-vscode-theme'
Plug '/Users/clay/Projects/vim/vim-vscode-theme'
" }}}

" === Language Support === {{{

" Language Server {{{2
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" }}}

" C: {{{
" Plug 'dunstontc/vim-cpp-enhanced-highlight', {'for': ['c', 'cpp', 'objc', 'objcpp']}
" Plug 'arakashic/chromatica.nvim',            {'for': ['c', 'cpp', 'objc', 'objcpp']}

" }}}

" Elixir: {{{
Plug 'elixir-editors/vim-elixir', {'for': ['elixir']}
Plug 'slashmili/alchemist.vim',   {'for': ['elixir']}
Plug 'mhinz/vim-mix-format',      {'for': ['elixir']}
" }}}

" JavaScript: {{{
Plug 'pangloss/vim-javascript',          {'for': ['javascript', 'typescript', 'jsx', 'tsx']}
Plug 'jonsmithers/experimental-lit-html-vim'
" Plug 'othree/yajs.vim',                        {'for': ['javascript', 'jsx']}
" Plug 'othree/javascript-libraries-syntax.vim', {'for': ['javascript', 'jsx']}
" Plug 'heavenshell/vim-jsdoc',            {'for': ['javascript', 'typescript', 'jsx', 'tsx']}
" Plug 'othree/jsdoc-syntax.vim',          {'for': ['javascript', 'typescript', 'vue']}
Plug 'jparise/vim-graphql',              {'for': ['graphql']}
Plug 'posva/vim-vue',                    {'for': ['vue', 'html']}
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
Plug 'gutenye/json5.vim',                {'for': 'json5'}
Plug 'rhysd/vim-fixjson',                {'for': 'json' }
" }}}

" HTML CSS: {{{
" HTML:
Plug 'othree/html5.vim',                 {'for': ['html']}
" Plug 'azakus/vim-webcomponents',         {'for': ['html']}
" CSS:
Plug 'amadeus/vim-css',                  {'for': ['css']}
" Plug 'hail2u/vim-css3-syntax',           {'for': ['css'  ]}
Plug 'groenewege/vim-less',              {'for': ['less' ]}
Plug 'wavded/vim-stylus',                {'for': ['styl', 'stylus']}
" Templates:
" Plug 'tpope/vim-haml',                   {'for': ['haml']}
" Plug 'lepture/vim-jinja',                {'for': ['jinja' ]}
" Plug 'digitaltoad/vim-pug',              {'for': ['jade', 'pug'], }
" Plug 'slim-template/vim-slim',           {'for': ['slim']}
" Plug 'mustache/vim-mustache-handlebars', {'for': ['hbs', 'html']}
" }}}

" Go: {{{
Plug 'fatih/vim-go',  {'for': 'go'}
" Plug 'jodosha/vim-godebug'
" Plug 'godoctor/godoctor.vim'
" }}}

" Lua: {{{
Plug 'tbastos/vim-lua',         {'for': ['lua']}
" }}}

" Python: {{{
" Plug 'tweekmonster/impsort.vim',     {'for': 'python'}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'heavenshell/vim-pydocstring',  {'for': 'python'}
" Plug 'python-mode/python-mode',      {'for': 'python'}
" Plug 'davidhalter/jedi-vim',         {'for': 'python'}
" }}}

" Ruby: {{{
Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}
" Plug 'tpope/vim-rails'
" }}}

" Rust: {{{
Plug 'rust-lang/rust.vim',    {'for': 'rust'}
Plug 'racer-rust/vim-racer',  {'for': 'rust'}
" }}}

" Shell: {{{
Plug 'chrisbra/vim-zsh',  {'for': 'zsh'   }
Plug 'vim-perl/vim-perl', {'for': 'perl'  }
Plug 'dag/vim-fish',      {'for': 'fish'  }
" }}}

" Config: {{{
Plug 'tmux-plugins/vim-tmux',   {'for': 'tmux'         }
Plug 'chrisbra/csv.vim',        {'for': ['csv', 'tsv' ]}
Plug 'cespare/vim-toml',        {'for': ['toml', 'tml']}
Plug 'chr4/nginx.vim',          {'for': 'nginx'        }
Plug 'ekalinin/Dockerfile.vim', {'for': 'dockerfile'   }
" Plug 'hashivim/vim-terraform'
" Plug 'pearofducks/ansible-vim'
" }}}

" Writing: {{{
Plug 'lervag/vimtex',                    {'for': ['tex'   ]}
Plug 'jceb/vim-orgmode',                 {'for': ['org'   ]}
Plug 'tpope/vim-markdown',               {'for': 'markdown'}
" Plug 'nelstrom/vim-markdown-folding',    {'for': 'markdown'}
Plug 'tyru/markdown-codehl-onthefly.vim',{'for': 'markdown'}
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax',     {'for': ['md', 'md.pandoc', 'pandoc']}
" }}}

" Other: {{{
Plug 'rhysd/vim-crystal',   {'for': ['crystal', 'cr']}
" Plug 'isaacsloan/vim-slang'
Plug 'neovimhaskell/haskell-vim', {'for': ['haskell', 'cabal']}
" Plug 'uarun/vim-protobuf',  {'for': ['proto']}
" Plug 'jpalardy/vim-slime',  {'for': ['lisp', 'el']}
" Plug 'peterhoeg/vim-qml',   {'for': ['qml']}
" Plug 'reasonml-editor/vim-reason-plus', {'for': ['reason']}
" Plug 'rhysd/vim-wasm'
" }}}

" }}}

" === Linting === {{{
Plug 'sbdchd/neoformat'                                      " A (Neo)vim plugin for formatting code.
Plug 'neomake/neomake',     {'do': 'make build/vimhelplint'} " Asynchronous linting and make framework for Neovim/Vim
Plug 'ternjs/tern_for_vim', {'for': ['javascript']}
" }}}

" === Text Objects === {{{
" Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'               " Create your own text objects.
Plug 'kana/vim-textobj-line'               " Text objects for the current line.
Plug 'kana/vim-textobj-fold'               " Text objects for foldings.
Plug 'kana/vim-textobj-entire'             " Text objects for the entire content of a buffer.
Plug 'beloglazov/vim-textobj-quotes'       " Text objects for the closest pairs of quotes of any type.
Plug 'glts/vim-textobj-comment'            " Text objects for comments.
Plug 'michaeljsmith/vim-indent-object'     " Text objects for levels of indentation.
Plug 'Julian/vim-textobj-variable-segment' " Text objects for variable segments in PascalCase, camelCase, snake_case, or kebab-case.
Plug 'Julian/vim-textobj-brace'            " A text object for the closest inner () {} *or* []
Plug 'Raimondi/vim_search_objects'         " Vim text objects for search results.
" }}}

" === Editing === {{{
Plug 'tpope/vim-commentary'      " Comment stuff out.
Plug 'tomtom/tcomment_vim'       " An extensible & universal comment vim-plugin that also handles embedded filetypes.
" Plug 'tyru/caw.vim'            " Vim comment plugin: supported operator/non-operator mappings, repeatable by dot-command, 300+ filetypes.
Plug 'kana/vim-niceblock'        " Make blockwise Visual mode more useful.
Plug 'joereynolds/place.vim'     " Enter pieces of text without moving.
Plug 'junegunn/vim-easy-align'   " A Vim alignment plugin
Plug 'haya14busa/vim-edgemotion' " Move to the edge! (with J/K)
" Plug 'machakann/vim-swap'      " Reorder delimited items.
Plug 'valloric/matchtagalways',   {'for': ['html', 'xml', 'gohtml']}            " Always highlights the enclosing html/xml tags.
" Plug 'AndrewRadev/splitjoin.vim', {'on': ['SplitjoinSplit', 'SplitjoinJoin']} " Simplifies the transition between multiline and single-line code.
" Plug 'AndrewRadev/switch.vim',    {'on': 'Switch'}                            " Switch segments of text with predefined replacements.
Plug 'dkarter/bullets.vim',       {'for' : ['gitcommit', 'markdown', 'rst', 'scratch', 'text', 'text', 'yaml']} " Automated bullet lists
" }}}

" === Utilities === {{{
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'                    " Wrapper for using FZF in Vim.
Plug 'djoshea/vim-autoread'                " Have Vim automatically reload a file that has changed externally.
Plug 'tpope/vim-rsi'                       " Readline style insertion.
Plug 'tpope/vim-eunuch'                    " Vim sugar for the UNIX shell commands that need it the most.
Plug 'tpope/vim-repeat'                    " Enable repeating supported plugin maps with "."
Plug 'tpope/vim-fugitive'                  " A Git wrapper so awesome, it should be illegal.
Plug 'tpope/vim-surround'                  " Provides mappings to easily delete, change, and add surroundings in pairs.
Plug 'tpope/vim-dispatch'                  " Asynchronous build and test dispatcher.
" Plug 'tpope/vim-endwise'                 " Helps to end certain structures automatically.
" Plug 'tpope/vim-abolish'                 " Easily search for, substitute, and abbreviate multiple variants of a word.
" Plug 'tpope/vim-projectionist'           " Granular project configuration.
Plug 'tpope/vim-speeddating'               " Use CTRL-A/CTRL-X to increment dates, times, and more.
Plug 'airblade/vim-rooter'                 " Changes Vim working directory to project root.
Plug 'pbrisbin/vim-mkdir'                  " Automatically create any non-existent directories before writing the buffer.
Plug 'kopischke/vim-stay'                  " Make Vim persist editing state without fuss.
Plug 'duff/vim-bufonly', {'on': 'BufOnly'} " Unload all buffers but the current one.
Plug 'mhinz/vim-sayonara'                  " Sane buffer/window deletion.
Plug 'ervandew/supertab'                   " Perform all your vim insert mode completions with Tab.
Plug 'airblade/vim-matchquote'             " %-style motion for single / double quotation marks, backticks and pipe.
Plug 'justinmk/vim-sneak'                  " Jump to any location specified by two characters.
" Plug 'rhysd/clever-f.vim'                " Extended f, F, t and T key mappings for Vim.
Plug 'Raimondi/delimitMate'                " Provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'sgur/vim-editorconfig'               " Yet another EditorConfig plugin for vim written in vimscript only.
Plug 'christoomey/vim-tmux-navigator'      " Seamless navigation between tmux panes and vim splits.
Plug 'nickeb96/vitality.vim'               " Make Vim play nicely with iTerm 2 and tmux.
" Plug 'embear/vim-localvimrc'
Plug 'ludovicchabant/vim-gutentags'        " A Vim plugin that manages your tag files.
Plug 'lambdalisue/suda.vim'                " Read or write files with sudo command.
Plug 'Shougo/context_filetype.vim'         " Context filetype library for Vim script?
" Plug 'Shougo/neossh.vim'                 " SSH interface for Vim plugins.
Plug 'Shougo/echodoc.vim'                  " Print documents in echo area.
Plug 'Shougo/vimproc.vim', {'do' : 'make'} " Interactive command execution in Vim.
" }}}

" === Denite === {{{
Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'dunstontc/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'rafi/vim-denite-session'
Plug 'mhartington/denite-neomake'
Plug 'yyotti/denite-marks'
Plug 'blankname/denite_fzf_matcher'
" }}}

" === Completion === {{{
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'} " Asynchronous completion framework for neovim/Vim8
Plug 'Shougo/neco-vim'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neoinclude.vim'
" Plug 'ujihisa/neco-look'
Plug 'SirVer/ultisnips'
Plug 'wellle/tmux-complete.vim'
Plug 'mattn/emmet-vim',               {'for': ['jsx', 'html', 'vue', 'gohtml' ]}
" Plug 'zchee/deoplete-clang',         {'for': ['c', 'cpp', 'objc', 'objcpp']}
" Plug 'tweekmonster/deoplete-clang2', {'for': ['c', 'cpp', 'objc', 'objcpp']}
Plug 'Shougo/deoplete-clangx',        {'for': ['c', 'cpp', 'objc', 'objcpp']}
" Plug 'Rip-Rip/clang_complete',        {'for': ['c', 'cpp', 'objc', 'objcpp']}
Plug 'zchee/deoplete-jedi',           {'for': 'python'}
Plug 'zchee/deoplete-zsh',            {'for': 'zsh'}
Plug 'ponko2/deoplete-fish',          {'for': 'fish'}
Plug 'carlitux/deoplete-ternjs',      {'for': ['jsx', 'javascript' ]}
Plug 'sebastianmarkow/deoplete-rust', {'for': 'rust'}
" Plug 'fishbullet/deoplete-ruby',      {'for': 'ruby'}
Plug 'uplus/deoplete-solargraph',     {'for': 'ruby'}
Plug 'padawan-php/deoplete-padawan',  {'for': 'php'}
Plug 'artur-shaik/vim-javacomplete2', {'for': 'java'}
Plug 'zchee/deoplete-go',             {'for': 'go', 'do':  'make'}
Plug 'fcpg/vim-complimentary',        {'for': 'vim'}  " Improves the completion of VimL builtin functions, commands, variables and options.
" Plug 'cyansprite/deoplete-omnisharp', {'for': 'cs'}
" Plug '1995eaton/vim-better-javascript-completion'
" }}}

" === Misc === {{{
Plug 'mattn/webapi-vim' " An Interface to WEB APIs.
" Plug 'skywind3000/asyncrun.vim' " Run Async Shell Commands in Vim 8.0 / NeoVim and Output to Quickfix Window.
" }}}

" === Search And Replace === {{{
" Plug 'mileszs/ack.vim'
Plug 'osyo-manga/vim-anzu' " Vim search status (current/found).
" Plug 'haya14busa/is.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/vim-asterisk' " Provides improved * motions.
" Plug 'brooth/far.vim'
" Plug 'dyng/ctrlsf.vim'
" Plug 'pelodelfuego/vim-swoop'
" }}}

" === Lazy === {{{
Plug 'ciaranm/securemodelines'                                   " A secure alternative to Vim modelines
Plug 'frioux/vim-regedit'                                        " Allows very simple modification of registers
Plug 'Shougo/junkfile.vim'                                       " Create temporary files
Plug 'Shougo/vinarise.vim',           { 'on': 'Vinarise'}        " Hex editing
Plug 'Shougo/deol.nvim',              { 'on': 'Deol'}            " Dark powered shell interface for NeoVim and Vim8.
Plug 'tweekmonster/startuptime.vim',  { 'on': 'StartupTime'}     " Breakdown Vim's --startuptime output
Plug 'tyru/capture.vim',              { 'on': 'Capture'}         " Show Ex command output in a buffer
Plug 'chrisbra/Colorizer',            { 'on': 'ColorToggle'}     " Colors hex codes and color names
Plug 'dhruvasagar/vim-table-mode',    { 'on': 'TableModeToggle'} " Automatic table creator & formatter
Plug 'majutsushi/tagbar',             { 'on': 'TagbarToggle'}    " Provides an easy way to browse the tags of the current file and get an overview of its structure.
Plug 'mbbill/undotree',               { 'on': 'UndotreeToggle'}  " Undo history visualizer
Plug 'guns/xterm-color-table.vim',    { 'on': 'XtermColorTable'} " All 256 xterm colors with their RGB equivalents
" }}}

" === Local === {{{
" Plug '/Users/clay/Projects/Vim/tcd'
" Plug 'dunstontc/tcd'
Plug 'dunstontc/syntax-vim-ex'
Plug 'dunstontc/projectile.nvim'
" }}}

call plug#end()

filetype plugin indent on
syntax on
set nocompatible

let g:python3_host_prog  = '/usr/local/bin/python3'


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

