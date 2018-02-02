"  ________   ___      ___ ___  ___ _________   ________  ________
" |\   ___  \|\  \    /  /|\  \|\   _ \  _   \|\   __  \|\   ____\
" \ \  \\ \  \ \  \  /  / | \  \ \  \\\__\ \  \ \  \|\  \ \  \___|
"  \ \  \\ \  \ \  \/  / / \ \  \ \  \\|__| \  \ \   _  _\ \  \
"   \ \  \\ \  \ \    / /   \ \  \ \  \    \ \  \ \  \\  \\ \  \____
"    \ \__\\ \__\ \__/ /     \ \__\ \__\    \ \__\ \__\\ _\\ \_______\
"     \|__| \|__|\|__|/       \|__|\|__|     \|__|\|__|\|__|\|_______|

scriptencoding utf-8
if !has('nvim')
  finish
endif

" ==============================================================================
"  Plugins
" ==============================================================================

let g:dein_repo = 'https://github.com/Shougo/dein.vim.git'
let g:dein_dir = '~/.config/nvim/dein/repos/github.com/Shougo/dein.vim'

if empty(glob(g:dein_dir))
  exec 'silent !mkdir -p '.g:dein_dir
  exec '!git clone '.g:dein_repo.' '.g:dein_dir
endif
exec 'set runtimepath+='.g:dein_dir


call dein#begin(expand('~/.config/nvim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('haya14busa/dein-command.vim')

" === user-interface === {{{
call dein#add('junegunn/vim-peekaboo')
" call dein#add('itchyny/lightline.vim')
call dein#add('airblade/vim-gitgutter')
call dein#add('Shougo/vimfiler.vim')
call dein#add('romgrk/vimfiler-prompt')
call dein#add('ryanoasis/vim-devicons')
call dein#add('mgee/lightline-bufferline')
call dein#add('itchyny/vim-cursorword')
call dein#add('blueyed/vim-diminactive')
call dein#add('xtal8/traces.vim')
" call dein#add('jszakmeister/vim-togglecursor')
" call dein#add('thaerkh/vim-indentguides')
" }}}

" === Themes === {{{
call dein#add('/Users/clay/Projects/GitHub/vim-vscode-theme')
" call dein#add('dunstontc/vim-code-dark')
" call dein#add('morhetz/gruvbox')
" call dein#add('romainl/Apprentice')
" call dein#add('KKPMW/moonshine-vim')
" call dein#add('joshdick/onedark.vim')
" call dein#add('mhartington/oceanic-next')
" call dein#add('altercation/vim-colors-solarized')
" call dein#add('rhysd/vim-color-spring-night')
" call dein#add('liuchengxu/space-vim-dark')
" call dein#add('mhallendal/spacedust-theme')
" }}}

" === Language Support === {{{1

" Language Servers {{{2
" call dein#add('autozimu/LanguageClient-neovim', {
"     \ 'rev': 'next',
"     \ 'build': 'bash install.sh',
"     \ })
" }}}

" C: {{{2
call dein#add('/Users/clay/.ghq/github.com/dunstontc/vim-cpp-enhanced-highlight', {'lazy':1, 'on_ft': ['c', 'cpp', 'objc', 'objcpp']})
" }}}

" C# {{{
call dein#add('/Users/clay/.ghq/github.com/dunstontc/omnisharp-vim', { 'lazy': 1, 'on_ft': ['cs']})
call dein#add('fsharp/vim-fsharp', { 'lazy': 1, 'on_ft': ['fsharp']})
" }}}

" JavaScript: {{{2
call dein#add('pangloss/vim-javascript',          {'lazy':1, 'on_ft': ['jsx', 'javascript']})
call dein#add('heavenshell/vim-jsdoc',            {'lazy':1, 'on_ft': ['jsx', 'javascript']})
call dein#add('othree/jsdoc-syntax.vim',          {'lazy':1, 'on_ft': ['jsx', 'typescript', 'vue']})
call dein#add('HerringtonDarkholme/yats.vim',     {'lazy':1, 'on_ft': ['tsx', 'typescript']})
call dein#add('kchmck/vim-coffee-script',         {'lazy':1, 'on_ft': ['coff', 'coffee', 'cson']})
call dein#add('posva/vim-vue',                    {'lazy':1, 'on_ft': ['vue'  ]})
" call dein#add('othree/yajs.vim',                  {'lazy':1, 'on_ft': ['js', 'jsx', 'javascript']})
" call dein#add('elzr/vim-json',                    {'lazy':1, 'on_ft': ['json'                  ]})
" call dein#add('othree/javascript-libraries-syntax.vim')
call dein#add('rhysd/vim-fixjson',       { 'lazy':1, 'on_ft': 'json' })
" }}}

" HTML CSS: {{{2
call dein#add('othree/html5.vim',                 {'lazy':1, 'on_ft': ['html' ]})
call dein#add('hail2u/vim-css3-syntax',           {'lazy':1, 'on_ft': ['css'  ]})
call dein#add('groenewege/vim-less',              {'lazy':1, 'on_ft': ['less' ]})
call dein#add('wavded/vim-stylus',                {'lazy':1, 'on_ft': ['styl', 'stylus']})
" }}}

" Go: {{{2
call dein#add('/Users/clay/.ghq/github.com/dunstontc/vim-go',  {'lazy':1, 'on_ft': 'go' })
" call dein#add('jodosha/vim-godebug')
" call dein#add('godoctor/godoctor.vim')
" }}}

" Lua: {{{2
call dein#add('tbastos/vim-lua',         {'lazy':1, 'on_ft': ['lua'  ]})
call dein#add('VaiN474/vim-etlua',       {'lazy':1, 'on_ft': ['lua' ]})
call dein#add('VaiN474/vim-etlua-plain', {'lazy':1, 'on_ft': ['ept' ]})
call dein#add('leafo/moonscript-vim',    {'lazy':1, 'on_ft': ['moon' ]})
" call dein#add('xolox/vim-misc',         {'lazy':1, 'on_ft': ['lua'  ]})
" call dein#add('xolox/vim-lua-ftplugin', {'lazy':1, 'on_ft': ['lua'  ]})
" }}}

" PHP: {{{2
call dein#add('tobyS/pdv', {'lazy': 1, 'on_ft': 'php'})
" }}}

" Python: {{{2
call dein#add('lepture/vim-jinja',                {'lazy':1, 'on_ft': ['jinja' ]})
call dein#add('tweekmonster/impsort.vim',         {'lazy':1, 'on_ft': ['python']})
call dein#add('hynek/vim-python-pep8-indent',     {'lazy':1, 'on_ft': ['py', 'python'  ]})
call dein#add('/Users/clay/.ghq/github.com/dunstontc/vim-pydocstring', {'lazy':1, 'on_ft': ['python']})
" call dein#add('python-mode/python-mode',          {'lazy':1, 'on_ft': ['py', 'python'  ]})
" call dein#add('davidhalter/jedi-vim',             {'lazy':1, 'on_ft': ['py', 'python'  ]})
" }}}

" Ruby: {{{2
call dein#add('vim-ruby/vim-ruby',                {'lazy':1, 'on_ft': ['ruby', 'rb' ]})
call dein#add('tpope/vim-haml',                   {'lazy':1, 'on_ft': ['haml'       ]})
" }}}

" Writing: {{{2
call dein#add('lervag/vimtex',                    {'lazy':1, 'on_ft': ['tex'  ]})
call dein#add('jceb/vim-orgmode',                 {'lazy':1, 'on_ft': ['org'  ]})
call dein#add('tpope/vim-markdown',               {'lazy':1, 'on_ft': ['markdown']})
" call dein#add('nelstrom/vim-markdown-folding',    {'lazy':1, 'on_ft': ['markdown']})
call dein#add('tyru/markdown-codehl-onthefly.vim',{'lazy':1, 'on_ft': ['markdown']})
" call dein#add('plasticboy/vim-markdown',          {'lazy':1, 'on_ft': ['md', 'markdown']})
" call dein#add('vim-pandoc/vim-pandoc')
" call dein#add('vim-pandoc/vim-pandoc-syntax',     {'lazy':1, 'on_ft': ['md', 'md.pandoc', 'pandoc']})
" }}}

" Shell: {{{2
call dein#add('chrisbra/vim-zsh',                 {'lazy':1, 'on_ft': ['zsh'  ]})
call dein#add('vim-perl/vim-perl',                {'lazy':1, 'on_ft': ['perl']})
call dein#add('dag/vim-fish',                     {'lazy':1, 'on_ft': ['fish' ]})
call dein#add('rbtnn/powershell.vim',             {'lazy':1, 'on_ft': ['ps1' ]})
" }}}

" Config: {{{2
" call dein#add('xu-cheng/brew.vim')
call dein#add('zplug/vim-zplug',         { 'lazy':1, 'on_ft': ['zsh'        ]})
call dein#add('tmux-plugins/vim-tmux',   { 'lazy':1, 'on_ft': ['tmux'       ]})
call dein#add('chrisbra/csv.vim',        { 'lazy':1, 'on_ft': ['csv', 'tsv' ]})
call dein#add('cespare/vim-toml',        { 'lazy':1, 'on_ft': ['toml', 'tml']})
call dein#add('ekalinin/Dockerfile.vim', { 'lazy':1, 'on_ft': ['dockerfile' ]})
" }}}

" Other: {{{2
call dein#add('rhysd/vim-crystal',       { 'lazy':1, 'on_ft': ['crystal', 'cr' ]})
call dein#add('rust-lang/rust.vim',      { 'lazy':1, 'on_ft': ['rust', 'rs' ]})
call dein#add('jpalardy/vim-slime',      { 'lazy':1, 'on_ft': ['lisp', 'el' ]})
call dein#add('rhysd/vim-wasm',          { 'lazy':1, 'on_ft': ['wast'       ]})
call dein#add('peterhoeg/vim-qml',       { 'lazy':1, 'on_ft': ['qml']})
call dein#add('slim-template/vim-slim',  { 'lazy':1, 'on_ft': ['slim']})
call dein#add('digitaltoad/vim-pug',     { 'lazy':1, 'on_ft': ['jade', 'pug'], })
call dein#add('keith/swift.vim',         { 'lazy':1, 'on_ft': 'swift' })
" }}}

" }}}

" === Linting === {{{
call dein#add('neomake/neomake',           {'build': 'make build/vimhelplint'})
call dein#add('machakann/vim-vimhelplint', {'lazy':1, 'on_ft': 'help'})
call dein#add('ternjs/tern_for_vim',       {'lazy':1, 'on_ft': ['jsx', 'javascript']})
" call dein#add('sbdchd/neoformat')
" call dein#add('reedes/vim-wordy')
" call dein#add('reedes/vim-lexical')
" }}}

" === Text Objects === {{{
" call dein#add('wellle/targets.vim')
call dein#add('kana/vim-operator-user')
" call dein#add('kana/vim-operator-replace')
" call dein#add('rhysd/vim-operator-surround')

call dein#add('kana/vim-textobj-user')
call dein#add('kana/vim-textobj-line')
call dein#add('kana/vim-textobj-fold')
call dein#add('kana/vim-textobj-entire')
call dein#add('kana/vim-textobj-help')  " TODO: Configure this
" call dein#add('kana/vim-textobj-syntax')
" call dein#add('kana/vim-textobj-function')  " FIXME: Look into interaction between Denite & textobj-function
" call dein#add('haya14busa/vim-textobj-function-syntax')
call dein#add('glts/vim-textobj-comment')
call dein#add('michaeljsmith/vim-indent-object')
call dein#add('Julian/vim-textobj-variable-segment')
call dein#add('Julian/vim-textobj-brace')
call dein#add('Raimondi/vim_search_objects')
" call dein#add('junegunn/vim-after-object')
" call dein#add('thinca/vim-textobj-between')
call dein#add('beloglazov/vim-textobj-quotes')
" call dein#add('reedes/vim-textobj-sentence')
" call dein#add('saaguero/vim-textobj-pastedtext')
" call dein#add('rhysd/vim-textobj-anyblock')
" call dein#add('christoomey/vim-textobj-codeblock')
" }}}

" === Editing === {{{
" call dein#add('tpope/vim-commentary')
call dein#add('tomtom/tcomment_vim')
call dein#add('tyru/caw.vim')
call dein#add('kana/vim-niceblock')
call dein#add('joereynolds/place.vim')
call dein#add('junegunn/vim-easy-align')
call dein#add('haya14busa/vim-edgemotion')
" call dein#add('machakann/vim-swap')
call dein#add('valloric/matchtagalways',   {'lazy':1,  'on_ft': ['html', 'xml'], })
call dein#add('AndrewRadev/splitjoin.vim', {'lazy': 1, 'on_cmd': ['SplitjoinSplit', 'SplitjoinJoin']})
call dein#add('AndrewRadev/switch.vim',    {'lazy': 1, 'on_cmd': 'Switch'})
call dein#add('dkarter/bullets.vim',       {'lazy': 1, 'on_ft' : ['gitcommit', 'markdown', 'rst', 'scratch', 'text', 'text', 'yaml']})
" }}}

" === Utilities === {{{
call dein#add('/usr/local/opt/fzf')
call dein#add('~/Projects/Vim/forks/fzf.vim')
call dein#add('tpope/vim-rsi')
" call dein#add('tpope/vim-tbone')
call dein#add('tpope/vim-eunuch')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-dispatch')
" call dein#add('tpope/vim-endwise')
" call dein#add('tpope/vim-abolish')
call dein#add('tpope/vim-projectionist')
call dein#add('tpope/vim-speeddating')
call dein#add('tpope/vim-characterize', {'lazy': 1, 'on_cmd': '<Plug>(characterize)'})
call dein#add('airblade/vim-rooter')
call dein#add('pbrisbin/vim-mkdir')
call dein#add('kopischke/vim-stay')
" call dein#add('farmergreg/vim-lastplace')
call dein#add('duff/vim-bufonly', {'lazy': 1, 'on_cmd': 'BufOnly'})
call dein#add('mhinz/vim-sayonara')
call dein#add('ervandew/supertab')
call dein#add('airblade/vim-matchquote')  " `%` jumps, but for quotes
call dein#add('justinmk/vim-sneak')
" call dein#add('rhysd/clever-f.vim')
call dein#add('Raimondi/delimitMate')
call dein#add('sgur/vim-editorconfig')
" call dein#add('tommcdo/vim-kangaroo')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('nickeb96/vitality.vim')
" call dein#add('simeji/winresizer')
call dein#add('ludovicchabant/vim-gutentags')
call dein#add('lambdalisue/suda.vim')
call dein#add('Shougo/context_filetype.vim')
" call dein#add('Shougo/neossh.vim')
call dein#add('Shougo/echodoc.vim')
" call dein#add('Shougo/vimproc.vim', { 'build' : 'make' })
" }}}

" === Denite === {{{
call dein#add('Shougo/unite.vim')
call dein#add('~/.ghq/github.com/dunstontc/denite.nvim')
call dein#add('~/.ghq/github.com/dunstontc/neomru.vim')
call dein#add('Shougo/neoyank.vim')
call dein#add('Jagua/vim-denite-ghq')
call dein#add('rafi/vim-denite-z')
call dein#add('rafi/vim-denite-session')
" call dein#add('lambdalisue/session.vim')
call dein#add('mhartington/denite-neomake')
" call dein#add('iamcco/file-manager.vim')
call dein#add('notomo/denite-autocmd')
" call dein#add('bennyyip/denite-github-stars')
call dein#add('yyotti/denite-marks')
call dein#add('blankname/denite_fzf_matcher')
" }}}

" === Completion === {{{
call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
call dein#add('Shougo/neco-vim')
call dein#add('Shougo/neco-syntax')
call dein#add('Shougo/neoinclude.vim')
" call dein#add('ujihisa/neco-look')
call dein#add('SirVer/ultisnips')
call dein#add('thalesmello/webcomplete.vim')
call dein#add('wellle/tmux-complete.vim')
call dein#add('mattn/emmet-vim',               { 'lazy':1, 'on_ft': ['jsx', 'html', 'vue' ]})
" call dein#add('zchee/deoplete-clang',          { 'lazy':1, 'on_ft': ['c', 'cpp', 'objc', 'objcpp']})
" call dein#add('tweekmonster/deoplete-clang2',  { 'lazy':1, 'on_ft': ['c', 'cpp', 'objc', 'objcpp']})
call dein#add('Rip-Rip/clang_complete',        { 'lazy':1, 'on_ft': ['c', 'cpp', 'objc', 'objcpp']})
call dein#add('zchee/deoplete-jedi',           { 'lazy':1, 'on_ft': 'python'})
call dein#add('zchee/deoplete-zsh',            { 'lazy':1, 'on_ft': 'zsh'})
call dein#add('zchee/deoplete-docker',         { 'lazy':1, 'on_ft': 'dockerfile'})
call dein#add('ponko2/deoplete-fish',          { 'lazy':1, 'on_ft': 'fish'})
call dein#add('carlitux/deoplete-ternjs',      { 'lazy':1, 'on_ft': ['jsx', 'javascript' ]})
call dein#add('sebastianmarkow/deoplete-rust', { 'lazy':1, 'on_ft': 'rust'})
call dein#add('fishbullet/deoplete-ruby',      { 'lazy':1, 'on_ft': 'ruby'})
call dein#add('padawan-php/deoplete-padawan',  { 'lazy':1, 'on_ft': 'php'})
call dein#add('artur-shaik/vim-javacomplete2', { 'lazy':1, 'on_ft': 'java'})
call dein#add('zchee/deoplete-go',             { 'lazy':1, 'on_ft': 'go',
                                               \ 'build':  'make'})
call dein#add('fcpg/vim-complimentary',        { 'lazy':1, 'on_ft': 'vim'})  " Complimentary improves the completion of VimL builtin functions, commands, variables and options.
" call dein#add('cyansprite/deoplete-omnisharp', { 'lazy':1, 'on_ft': 'cs'})
" call dein#add('1995eaton/vim-better-javascript-completion')
" }}}

" === Misc === {{{
call dein#add('mattn/webapi-vim')
call dein#add('wakatime/vim-wakatime')
" call dein#add('skywind3000/asyncrun.vim')
call dein#add('equalsraf/neovim-gui-shim')
call dein#add('dzhou121/gonvim-fuzzy')
" call dein#add('chrisbra/unicode.vim')
" call dein#add('lambdalisue/vim-gista', {
"     \ 'on_cmd': 'Gista',
"     \})
" call dein#add('vifm/neovim-vifm')
" call dein#add('nicwest/vim-http')
" call dein#add('diepm/vim-rest-console')
" }}}

" === Version Control === {{{
" call dein#add('lambdalisue/gina.vim')
" call dein#add('gregsexton/gitv')
" call dein#add('rhysd/committia.vim')
" call dein#add('idanarye/vim-merginal')
" call dein#add('elstgav/branch-manager')
call dein#add('jreybert/vimagit', { 'lazy': 1, 'on_cmd': 'Magit' })
call dein#add('christoomey/vim-conflicted')
" call dein#add('chrisbra/vim-diff-enhanced')
" }}}

" === Search And Replace === {{{
" call dein#add('mileszs/ack.vim')
call dein#add('osyo-manga/vim-anzu')
" call dein#add('haya14busa/is.vim')
call dein#add('haya14busa/incsearch.vim')
call dein#add('haya14busa/vim-asterisk')
" call dein#add('brooth/far.vim')
" call dein#add('dyng/ctrlsf.vim')
" call dein#add('pelodelfuego/vim-swoop', { 'lazy': 1, 'on_source': 'swoop'})
" call dein#add('ctrlpvim/ctrlp.vim', { 'lazy': 1, 'on_map': '<C-p>'})
" }}}

" === Lazy === {{{
call dein#add('ciaranm/securemodelines',       { 'lazy': 1, 'on_event' : 'BufRead' })
call dein#add('frioux/vim-regedit')
call dein#add('Shougo/junkfile.vim')
call dein#add('Shougo/vinarise.vim',           { 'lazy': 1, 'on_cmd': 'Vinarise'})
call dein#add('Shougo/deol.nvim',              { 'lazy': 1, 'on_cmd': 'Deol'                       })
" call dein#add('tweekmonster/startuptime.vim')
call dein#add('tweekmonster/nvim-api-viewer',  { 'lazy': 1, 'on_cmd' :['NvimAPI', 'NvimAPI!'      ]})
call dein#add('tyru/capture.vim',              { 'lazy': 1, 'on_cmd': 'Capture'                    })
call dein#add('thinca/vim-scouter',            { 'lazy': 1, 'on_cmd': ['Scouter', 'ScouterVerbose']})
call dein#add('thinca/vim-prettyprint',        { 'lazy': 1, 'on_cmd': ['PrettyPrint', 'PP'        ]})
call dein#add('chrisbra/Colorizer',            { 'lazy': 1, 'on_cmd': 'ColorToggle'                })
call dein#add('dhruvasagar/vim-table-mode',    { 'lazy': 1, 'on_cmd': 'TableModeToggle'            })
call dein#add('majutsushi/tagbar',             { 'lazy': 1, 'on_cmd': 'TagbarToggle'               })
call dein#add('mbbill/undotree',               { 'lazy': 1, 'on_cmd': 'UndoTreeToggle'             })
call dein#add('itchyny/calendar.vim',          { 'lazy': 1, 'on_cmd': 'Calendar'                   })
call dein#add('itchyny/screensaver.vim',       { 'lazy': 1, 'on_cmd': 'ScreenSaver'                })
call dein#add('metakirby5/codi.vim',           { 'lazy': 1, 'on_cmd': 'Codi'                       })
call dein#add('ryanss/vim-hackernews',         { 'lazy': 1, 'on_cmd': 'HackerNews'                 })
call dein#add('junegunn/vim-github-dashboard', { 'lazy': 1, 'on_cmd': ['GHDashboard', 'GHActivity']})
call dein#add('junegunn/gv.vim',               { 'lazy': 1, 'on_cmd': ['GV', 'GV!', 'GV?'         ]})
call dein#add('guns/xterm-color-table.vim',    { 'lazy': 1, 'on_cmd': 'XtermColorTable'            })
" }}}

" === Local === {{{
call dein#add('/Users/clay/Projects/Vim/me/tcd')
call dein#add('~/Projects/Vim/me/projectile.nvim')
call dein#add('/Users/clay/.ghq/github.com/dunstontc/lightline.vim')
call dein#add('/Users/clay/.ghq/github.com/dunstontc/YUNOcommit.vim')
" call dein#add('/Users/clay/.ghq/github.com/dunstontc/highlighter.nvim', { 'do': ':UpdateRemotePlugins' })
call dein#add('~/.ghq/github.com/dunstontc/vison',           {'lazy':1, 'on_ft': ['json'        ]})
call dein#add('~/.ghq/github.com/dunstontc/syntax-vim-ex',   {'lazy':1, 'on_ft': 'vim'           })
call dein#add('~/.ghq/github.com/dunstontc/python-syntax',   {'lazy':1, 'on_ft': ['py', 'python']})
call dein#add('~/.ghq/github.com/dunstontc/vim-startify')
" call dein#add('~/.ghq/github.com/dunstontc/tagbar-markdown', {'lazy':1, 'on_ft': 'markdown'      }) " TODO: Learn PHP?
" }}}

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax on
set nocompatible           " Not compatible with vi


" ==============================================================================
" === C# === {{{
let g:Omnisharp_start_server=1

" let g:OmniSharp_server_type = 'v1'
let g:OmniSharp_server_type = 'roslyn'

"This is the default value, setting it isn't actually necessary
" let g:OmniSharp_host = 'http://localhost:2000'

"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1
" Use fzf.vim, no current Deoplete support.
let g:OmniSharp_selector_ui = 'fzf'

let g:OmniSharp_server_path = '/Users/clay/.omnisharp/OmniSharp'

" let g:deoplete_omnisharp_exe_path = 'mono /Users/clay/.omnisharp/OmniSharp.exe'
" let g:deoplete_omnisharp_port = 2000
" }}}

" ==============================================================================
" === C === {{{
" ==============================================================================

" === octol/vim-cpp-enhanced-highlight ===
let g:c_no_curly_error=1
let g:cpp_concepts_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
" let g:cpp_experimental_simple_template_highlight = 1

" === Rip-Rip/clang_complete ===
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib'

" === zchee/deoplete-clang ===
let g:deoplete#sources#clang#libclang_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
" let g:deoplete#sources#clang#clang_header=

" === tweekmonster/deoplete-clang2 ===
let g:deoplete#sources#clang#autofill_neomake = v:true
let g:deoplete#sources#clang#executable='/usr/bin/clang'

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
" Consider the variable of an function assignment
" to be part of the anonymous
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

" ==============================================================================
" === shell === {{{
let g:sh_no_error=1
" }}}
