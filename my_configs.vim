"""""""""""""""""""""""""""""
" => Base config
""""""""""""""""""""""""""""""
:set number
set clipboard+=unnamed
au BufWinEnter *.* set colorcolumn=80
" :set colorcolumn=75
"set bg=dark
"set cursorline
"set cursorcolumn
 
" highlight CursorLine cterm=none ctermbg=236
" highlight CursorColumn cterm=none ctermbg=236
" Exit insert mode by shortcut
inoremap jj <ESC>
" 防止选中执行<或者>后选中被取消问题
xnoremap <  <gv
xnoremap >  >gv

function! IsWSL()
    if has("unix")
        let lines = readfile("/proc/version")
        if lines[0] =~ "Microsoft"
            return 1
        endif
    endif
    return 0
endfunction
" fix windows WSL已启动就进入REPLACE MODE问题
if IsWSL()
    nnoremap <esc>^[ <esc>^[
endif

if has("win32")
    set shell=C:\Windows\System32\wsl.exe
    set shellpipe=|
    set shellredir=>
    set shellcmdflag=
endif

call plug#begin('~/.vim_runtime/my_plugins')
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion'
Plug 'yianwillis/vimcdoc'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ronakg/quickr-preview.vim'
Plug 'puremourning/vimspector'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mcchrish/nnn.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'liuchengxu/vista.vim'
Plug 'voldikss/vim-floaterm'
Plug 'dyng/ctrlsf.vim'
" Plug 'vim-airline/vim-airline'
" Plug 'skywind3000/vim-quickui'
" Plug 'skywind3000/gutentags_plus'
" Plug 'skywind3000/vim-preview'
" Plug 'xolox/vim-session'
" Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'davidhalter/jedi-vim'
" Plug 'Valloric/YouCompleteMe'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'honza/vim-snippets'
" Plug 'uguu-org/vim-matrix-screensaver'
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" Plug 'Xuyuanp/nerdtree-git-plugin' 
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'xolox/vim-misc'
" Plug 'tpope/vim-surround'
" if has('nvim') || has('patch-8.0.902')
"   Plug 'mhinz/vim-signify'
" else
"   Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
" endif
call plug#end()

""""""""""""""""""""""""""""""
" => author config
""""""""""""""""""""""""""""""
" map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
" map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr>

""""""""""""""""""""""""""""""
" => colorcheme
""""""""""""""""""""""""""""""
try
    colorscheme gruvbox
catch
    echo "caught" .. v:exception
endtry

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    " set guifont=DejaVuSansMono\ Nerd\ Font\ Mono:h11
    " set guifont="SourceCodePro\ NF:h11"
    set guifont=SauceCodePro\ Nerd\ Font\ Mono:h11
  endif
endif

""""""""""""""""""""""""""""""
" => Insert mode movement 
""""""""""""""""""""""""""""""
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>

""""""""""""""""""""""""""""""
" => rg setting
""""""""""""""""""""""""""""""
if executable('rg')
  let g:ctrlp_user_command = 'rg --files %s'
  let g:ctrlp_use_caching = 0
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_switch_buffer = 'et'
  let g:ackprg = 'rg --vimgrep --no-heading'
endif

""""""""""""""""""""""""""""""
" => Ack quick search word
""""""""""""""""""""""""""""""
" nnoremap <leader><leader>g :Ack <cword><CR>

""""""""""""""""""""""""""""""
" => Search HighLight
""""""""""""""""""""""""""""""
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

""""""""""""""""""""""""""""""
" => Shell completion
""""""""""""""""""""""""""""""
set wildmode=longest,list,full
set wildmenu

""""""""""""""""""""""""""""""
" => undotree
""""""""""""""""""""""""""""""
nnoremap <leader>u :UndotreeToggle <CR>

""""""""""""""""""""""""""""""
" => gtagso
"""""""""""""""""""""""""""""o
" let $GTAGSLABEL = 'native-pygments'
" if has("win32")
"     let $GTAGSCONF = 'G:\software\glo663wb\share\gtags\gtags.conf'
" elseif has("mac")
"     let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'
" endif

""""""""""""""""""""""""""""""
" => Search all word 
""""""""""""""""""""""""""""""
" 取消默认的CtrlP
" unmap <c-f>
" nnoremap <c-f> :vimgrep <cword> % \| cw <CR>

""""""""""""""""""""""""""""""
" => FZF 
""""""""""""""""""""""""""""""
" nunmap <c-p>
nnoremap <c-p> :FZF <CR>

""""""""""""""""""""""""""""""
" => vim-session
""""""""""""""""""""""""""""""
" let g:session_autoload = 'no'

""""""""""""""""""""""""""""""
" => Tagbar 
""""""""""""""""""""""""""""""
" nnoremap <leader>tb :TagbarOpenAutoClose<CR>

""""""""""""""""""""""""""""""
" => indentLine
""""""""""""""""""""""""""""""
let g:indentLine_enabled = 1
let g:indentLine_leadingSpaceEnabled = 1

""""""""""""""""""""""""""""""
" => rainbow_parentheses.vim 
""""""""""""""""""""""""""""""
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" 不加入这行, 防止黑色括号出现, 很难识别
" \ ['black',       'SeaGreen3'],

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""
" => CMake 
""""""""""""""""""""""""""""""
nnoremap <Leader>cm :wa<CR>:make<CR>:cw<CR>

""""""""""""""""""""""""""""""
" => CoC.vim
""""""""""""""""""""""""""""""
try
    source ~/.vim_runtime/my_configs/coc_config.vim
catch
    echo "caught" .. v:exception
endtry

""""""""""""""""""""""""""""""
" => quickr-preview
""""""""""""""""""""""""""""""
" let g:quickr_preview_keymaps = 0
" let g:quickr_preview_on_cursor = 1

""""""""""""""""""""""""""""""
" => Fix The legacy SnipMate parser is deprecated. Please see :h SnipMate-deprecate.
""""""""""""""""""""""""""""""
let g:snipMate = { 'snippet_version' : 1 }

""""""""""""""""""""""""""""""
" => skywind3000/asyncrun.vim' 
""""""""""""""""""""""""""""""
let g:asyncrun_open = 8

""""""""""""""""""""""""""""""
" => AsyncTask
""""""""""""""""""""""""""""""
noremap <silent><c-f5> :AsyncTask file-run<cr>
noremap <silent><c-b> :AsyncTask file-build<cr>

""""""""""""""""""""""""""""""
" => vim-airline
""""""""""""""""""""""""""""""
" let g:airline#extensions#fzf#enabled = 1
" let g:airline#extensions#grepper#enabled = 1

""""""""""""""""""""""""""""""
" =>vimspector
""""""""""""""""""""""""""""""
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
" mnemonic 'di' = 'debug inspect' (pick your own, if you prefer!)

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

let g:vimspector_sign_priority = {
  \   'vimspectorBP': 19,
  \   'vimspectorBPCond': 19,
  \   'vimspectorBPDisabled': 19,
  \ }

""""""""""""""""""""""""""""""
" => LeaderF
""""""""""""""""""""""""""""""
" try
"     source ~/.vim_runtime/my_configs/LeaderF.vim
" catch
" endtry

""""""""""""""""""""""""""""""
" => vim-grepper
""""""""""""""""""""""""""""""
try
    source ~/.vim_runtime/my_configs/vim-grepper.vim
catch
    echo "caught" .. v:exception
endtry
""""""""""""""""""""""""""""""
" => vim-which-key
""""""""""""""""""""""""""""""
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey ','<CR>
""""""""""""""""""""""""""""""
" => vim-which-key
""""""""""""""""""""""""""""""
let g:vista_default_executive = 'coc'
let g:vista_sidebar_position = 'vertical topleft'
""""""""""""""""""""""""""""""
" => Vista
""""""""""""""""""""""""""""""
nnoremap <silent> <leader>t :<c-u>Vista!!<CR>
""""""""""""""""""""""""""""""
" => vim-floaterm
""""""""""""""""""""""""""""""
let g:floaterm_keymap_new = '<Leader>ft'
""""""""""""""""""""""""""""""
" => ctrlsf
""""""""""""""""""""""""""""""
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
let g:ctrlsf_auto_preview = 1
