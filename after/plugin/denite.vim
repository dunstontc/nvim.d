" ==============================================================================
"  Denite Menus
" ==============================================================================
scriptencoding utf-8

" if exists('g:gui_oni')
"   finish
" endif

let s:menus = {}

let s:menus.config = { 'description': 'Neovim Settings' }
let s:menus.config.command_candidates = [
  \ ['Menu -- Denite',        'Denite menu:Denite'],
  \ ['Snippets/',             'VimFiler -explorer ~/nvim.d/snipz'],
  \ ['after/plugin/',         'VimFiler -explorer ~/nvim.d/after/plugin'],
  \ ['ftplugin/',             'VimFiler -explorer ~/nvim.d/ftplugin'],
  \ ]
let s:menus.config.file_candidates = [
  \ ['init.vim',              '~/nvim.d/init.vim'],
  \ ['Settings',              '~/nvim.d/plugin/settings.vim'],
  \ ['Plugin Settings',       '~/nvim.d/plugin/plugins.vim'],
  \ ['Mappings',              '~/nvim.d/plugin/mappings.vim'],
  \ ['Filetypes',             '~/nvim.d/filetype.vim'],
  \ ['Theme - DarkPlus',      '~/Projects/vim/vim-code-dark/colors/codedark.vim'],
  \ ['Denite',                '~/nvim.d/plugin/denite.vim'],
  \ ['Denite Menus',          '~/nvim.d/after/plugin/denite.vim'],
  \ ['Lightline',             '~/nvim.d/plugin/lightline.vim'],
  \ ['Lightline Theme',       '~/nvim.d/autoload/lightline/DarkPlus.vim'],
  \ ['Completion',            '~/nvim.d/plugin/completion.vim'],
  \ ['Autocommands',          '~/nvim.d/plugin/autocmnds.vim'],
  \ ['Commands',              '~/nvim.d/plugin/commands.vim'],
  \ ['Functions',             '~/nvim.d/autoload/functions.vim'],
  \ ['Cheatsheet',            '~/nvim.d/doc/cheat40.txt'],
  \ ]


" ==============================================================================

let s:menus.FZF = { 'description': 'FZF Actions' }
let s:menus.FZF.command_candidates = [
  \ ['Git files (git status)',             'GFiles?'],
  \ ['Open Buffers',                       'Buffers'],
  \ ['Color Schemes',                      'Colors'],
  \ ['Marks',                              'Marks'],
  \ ['Windows',                            'Windows'],
  \ ['v:oldfiles & Open Buffers',          'History'],
  \ ['Command History:',                   'History:'],
  \ ['Search History/',                    'History/'],
  \ ['Snippets (Ultisnips)',               'Snippets'],
  \ ['Git Commits',                        'Commits'],
  \ ['Git commits for the current buffer', 'BCommits'],
  \ ['Commands',                           'Commands'],
  \ ['Normal Mode Mappings',               'Maps'],
  \ ['Helptags [1]',                       'Helptags'],
  \ ['File types',                         'Filetypes'],
  \ ]
  " \ ['Locate PATTERN',                     '`Locate` command output'],
" \ ['Files (similar to :FZF)',            'Files [PATH]'],
" \ ['Git Giles (git ls-files)',           'GFiles [OPTS]'],
" \ ['',                                   'Ag [PATTERN]'],
" \ ['',                                   'Lines [QUERY]'],
" \ ['',                                   'BLines [QUERY]'],
" \ ['',                                   'Tags [QUERY]'],
" \ ['',                                   'BTags [QUERY]'],

" ==============================================================================

" Thanks Mike -- @mhartington -- https://github.com/mhartington/dotfiles
let s:menus.Fugitive = { 'description' : 'Fugitive Commands' }
let s:menus.Fugitive.command_candidates = [
  \ ['git status',              'Gstatus'],
  \ ['git diff',                'Gvdiff'],
  \ ['git commit',              'Gcommit'],
  \ ['git stage/add',           'Gwrite'],
  \ ['git checkout',            'Gread'],
  \ ['git rm',                  'Gremove'],
  \ ['git cd',                  'Gcd'],
  \ ['git push',                'exe "Git! push " input("remote/branch: ")'],
  \ ['git pull',                'exe "Git! pull " input("remote/branch: ")'],
  \ ['git pull rebase',         'exe "Git! pull --rebase " input("branch: ")'],
  \ ['git checkout branch',     'exe "Git! checkout " input("branch: ")'],
  \ ['git fetch',               'Gfetch'],
  \ ['git merge',               'Gmerge'],
  \ ['git browse',              'Gbrowse'],
  \ ['git head',                'Gedit HEAD^'],
  \ ['git parent',              'edit %:h'],
  \ ['git log commit buffers',  'Glog --'],
  \ ['git log current file',    'Glog -- %'],
  \ ['git log last n commits',  'exe "Glog -" input("num: ")'],
  \ ['git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
  \ ['git log until date',      'exe "Glog --until=" input("day: ")'],
  \ ['git log grep commits',    'exe "Glog --grep= " input("string: ")'],
  \ ['git log pickaxe',         'exe "Glog -S" input("string: ")'],
  \ ['git index',               'exe "Gedit " input("branchname\:filename: ")'],
  \ ['git mv',                  'exe "Gmove " input("destination: ")'],
  \ ['git grep',                'exe "Ggrep " input("string: ")'],
  \ ['git prompt',              'exe "Git! " input("command: ")'],
  \ ]


let s:menus.interfaces = { 'description': 'Plugins I should remember to use.' }
let s:menus.interfaces.command_candidates = [
      \ ['Calendar',        'Calendar'],
      \ ['Codi',            'Codi'],
      \ ['Deol',            'Deol'],
      \ ['GV',              'GV'],
      \ ['GV Current File', 'GV!'],
      \ ['GVi + LocList',   'GV?'],
      \ ['GHActivity',      'GHActivity'],
      \ ['GHDashboard',     'GHDashboard'],
      \ ['HackerNews',      'HackerNews'],
      \ ['Magit',           'Magit'],
      \ ['MacroEdit',       'MacroEdit q'],
      \ ['ScreenSaver',     'ScreenSaver'],
      \ ['XtermColorTable', 'XtermColorTable'],
  \ ]

let s:menus.map_list = { 'description': 'Plugins I should remember to use.' }
let s:menus.map_list.command_candidates = [
      \ ['FZF :Maps',            'Maps'],
      \ ['Unite mapping',        'Unite mapping'],
      \ ['Denite unite:mapping', 'Denite unite:mapping'],
      \ ['Denite map',           'Denite map'],
      \ ['Denite map:default',   'Denite map_default'],
      \ ['Denite map:verbose',   'Denite map_verbose'],
      \ ['Denite map:leader',    'Denite map_leader'],
  \ ]

" ==============================================================================

call denite#custom#var('menu', 'menus', s:menus)
" enable unite menu compatibility
" call denite#custom#var('menu', 'unite_source_menu_compatibility', 'true')

