augroup MyAutoCmds
  autocmd!

  autocmd VimResized * :wincmd =

  " autocmd InsertLeave * set nopaste

  " http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
  " autocmd VimEnter * autocmd WinEnter * let w:created=1
  " autocmd VimEnter * let w:created=1

  autocmd BufWinEnter \(*.asc\|*.gpg\) let g:neoyank_disable = 1

  autocmd BufNewFile,BufRead * setlocal formatoptions-=r
  autocmd BufNewFile,BufRead * setlocal formatoptions-=o

  " autocmd! User UltiSnipsEnterFirstSnippet
  autocmd User UltiSnipsEnterFirstSnippet call functions#HoldOn()
  " autocmd! User UltiSnipsExitLastSnippet
  autocmd User UltiSnipsExitLastSnippet call functions#HandItOver()

  autocmd VimLeave * hi! Cursor guibg=#808080 guifg=#282c34

  " autocmd WinEnter * hi LineNr ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212
  " autocmd WinLeave * hi LineNr ctermfg=274 guifg=#e9e9e9 ctermbg=133 guibg=#212121
  " autocmd WinLeave * hi LineNr ctermfg=274 guifg=#e9e9e9 ctermbg=133 guibg=#212121

  " autocmd InsertLeave * hi! EndOfBuffer guifg=#608B4E guibg=#303030
augroup END



