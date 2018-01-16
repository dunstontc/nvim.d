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
