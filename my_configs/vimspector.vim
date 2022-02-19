" Set the basic sizes
let g:vimspector_sidebar_width = 80
let g:vimspector_code_minwidth = 85
let g:vimspector_terminal_minwidth = 75

function! s:CustomiseUI()
  " Customise the basic UI...

  " Close the output window
  call win_gotoid( g:vimspector_session_windows.output )
  q
endfunction

function s:SetUpTerminal()
  " Customise the terminal window size/position
  " For some reasons terminal buffers in Neovim have line numbers
  call win_gotoid( g:vimspector_session_windows.terminal )
  set norelativenumber nonumber
endfunction

augroup MyVimspectorUICustomistaion
  autocmd!
  autocmd User VimspectorUICreated call s:CustomiseUI()
  autocmd User VimspectorTerminalOpened call s:SetUpTerminal()
augroup END

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

nmap <leader>cb <Plug>VimspectorToggleConditionalBreakpoint 
xmap <leader>cb <Plug>VimspectorToggleConditionalBreakpoint 
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

let g:vimspector_sign_priority = {
  \   'vimspectorBP': 19,
  \   'vimspectorBPCond': 19,
  \   'vimspectorBPDisabled': 19,
  \ }

let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB', 'lldb-vscode' ]
