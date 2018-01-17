# Neovim #

```sh
.
├── after
│   ├── plugin          # Plugin settings
│   ├── pydocstring     # Plugin settings
│   └── syntax          # Custom syntax definitions
├── autoload
│   └── lightline       # Lightline themes
├── colors              # Themes
├── doc                 # Maybe junk
├── ftplugin            # Filetype specific settings
├── nsnipz              # Neosnippet snippets
├── plugin              # Settings
│   ├── autocmnds.vim   # Autocommands
│   ├── commands.vim    # Commands
│   ├── completion.vim  # Deoplete settings+
│   ├── denite.vim      # Denite settings
│   ├── lightline.vim   # Statusline
│   ├── mappings.vim    # Key mappings
│   ├── plugins.vim     # Plugin settings not in after/
│   └── settings.vim    # General Vim settings
├── snipz               # Ultisnips snippets
├── spell               # Spelling additions
├── syntax              # Syntax additions
├── .projections.json   # Shortcuts
├── filetype.vim        # Filetype associations
├── init.vim            # nvimrc
└── readme.md           # You are here :)
```

## People Doing **Work**: ##

  - [Andy Stewart (@airblade)](https://github.com/airblade)
  - [Andrew Radev (@AndrewRadev)](https://github.com/AndrewRadev)
  - [Daniel Hahler (@blueyed)](https://github.com/blueyed)
  - [Christian Brabandt (@chrisbra)](https://github.com/chrisbra)
  - [Chris Toomey (@christoomey)](https://github.com/christoomey)
  - [@haya14busa](https://github.com/haya14busa)
  - [@itchyny](https://github.com/itchyny)
  - [Junegunn Choi (@junegunn)](https://github.com/junegunn)
  - [Justin M. Keyes (@justinmk)](https://github.com/justinmk)
  - [Kana Natsuno (@kana)](https://github.com/kana)
  - [Alisue (@lambdalisue)](https://github.com/lambdalisue)
  - [Takuya Fujiwara (@lambdalisue)](https://github.com/lambdalisue)
  - [@osyo-manga](https://github.com/osyo-manga)
  - [Marco Hinz (@mhinz)](https://github.com/mhinz)
  - [Yasuhiro Matsumoto (@mattn)](https://github.com/mattn)
  - [Mike Hartington (@mhartington)](https://github.com/mhartington)
  - [@rhysd](https://github.com/rhysd)
  - [Romain Lafourcade (@romainl)](https://github.com/romainl)
  - [Shougo Matsushita @(Shougo)](https://github.com/Shougo)
  - [@thinca](https://github.com/thinca)
  - [Tim Pope (@tpope)](https://github.com/tpope)
  - [TJ DeVries (@tjdevries)](https://github.com/tjdevries)
  - [Tommy Allen (@tweekmonster)](https://github.com/tweekmonster)
  - [Tatsuhiro Ujihisa (@ujihisa)](https://github.com/ujihisa)
  - [Koichi Shiraishi (@zchee)](https://github.com/zchee)


## omnisharp-vim  ##
[link](https://github.com/OmniSharp/omnisharp-vim/issues/306)

```sh
cd /Users/clay/.ghq/github.com/dunstontc/omnisharp-vim
git submodule update --init --recursive
mkdir -p omnisharp-roslyn/artifacts/scripts && cd omnisharp-roslyn/artifacts/scripts
ln -s ~/.omnisharp/* /Users/clay/.ghq/github.com/dunstontc/omnisharp-vim/omnisharp-roslyn/artifacts/scripts
# ln -s ~/.omnisharp/* .
ln -s OmniSharp.exe Omnisharp
```
