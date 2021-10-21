nnoremap <leader>g :Grepper -tool rg<cr>
nnoremap <leader>G :Grepper -tool rg -buffers<cr>
" nnoremap <leader>G :Grepper -tool ag<cr>

nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Optional. The default behaviour should work for most users.
let g:grepper               = {}
" let g:grepper.tools         = ['git', 'ag', 'rg']
let g:grepper.tools         = ['rg']
let g:grepper.jump          = 1
let g:grepper.next_tool     = '<leader>g'
let g:grepper.simple_prompt = 1
let g:grepper.quickfix      = 0

" command! Todo :Grepper -tool rg -query '\(TODO\|FIXME\)'
command! Todo :Grepper -noprompt -tool git -grepprg git grep -nIi '\(TODO\|FIXME\)'