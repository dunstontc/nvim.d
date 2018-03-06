" if exists('g:loaded_ftdeoplete_omnisharp_loaded')
"     finish
" endif

nnoremap <localleader>f :OmniSharpCodeFormat<cr>

" let g:loaded_ftdeoplete_omnisharp_loaded = 1

" let commd = 'mono '.
"             \ '~/.omnisharp/OmniSharp.exe -p '.
"             \ string(g:deoplete_omnisharp_port)

" call DeopleteOmnisharpReconnectServer()

let g:Omnisharp_start_server=0

" let g:OmniSharp_server_type = 'v1'
let g:OmniSharp_server_type = 'roslyn'

"This is the default value, setting it isn't actually necessary
" let g:OmniSharp_host = 'http://localhost:2000'

"Timeout in seconds to wait for a response from the server
let g:OmniSharp_timeout = 1
let g:OmniSharp_selector_ui = 'fzf'

let g:OmniSharp_server_path = '/Users/clay/.omnisharp/OmniSharp'

" let g:deoplete_omnisharp_exe_path = 'mono /Users/clay/.omnisharp/OmniSharp.exe'
" let g:deoplete_omnisharp_port = 2000

