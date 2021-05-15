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

call plug#begin('~/.vim_runtime/my_plugins')
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion'
Plug 'yianwillis/vimcdoc'
" Plug 'vim-airline/vim-airline'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" Plug 'skywind3000/vim-quickui'
" Plug 'skywind3000/gutentags_plus'
" Plug 'skywind3000/vim-preview'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'
" Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'davidhalter/jedi-vim'
" Plug 'Valloric/YouCompleteMe'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'
" Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'uguu-org/vim-matrix-screensaver'
Plug 'ronakg/quickr-preview.vim'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
" Plug 'puremourning/vimspector'
call plug#end()

""""""""""""""""""""""""""""""
" => author config
""""""""""""""""""""""""""""""
map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr>

""""""""""""""""""""""""""""""
" => colorcheme
""""""""""""""""""""""""""""""
try
    colorscheme gruvbox
catch
endtry

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    " set guifont="SourceCodePro Nerd Font Mono:h11"
    set guifont=Consolas:h11:cANSI
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
nnoremap <leader><leader>g :Ack <cword><CR>

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
" unnoremap <c-f>
nnoremap <c-f> :vimgrep <cword> % \| cw <CR>

""""""""""""""""""""""""""""""
" => FZF 
""""""""""""""""""""""""""""""
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
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""""""""""""""""""""""""""""""
" => CMake 
""""""""""""""""""""""""""""""
nnoremap <Leader>cm :wa<CR>:make<CR>:cw<CR>

""""""""""""""""""""""""""""""
" => CoC.vim
""""""""""""""""""""""""""""""
try
    source ~/.vim_runtime/coc_config.vim
catch
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
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f9> :AsyncTask file-build<cr>

""""""""""""""""""""""""""""""
" => vim-airline
""""""""""""""""""""""""""""""
" let g:airline#extensions#fzf#enabled = 1
" let g:airline#extensions#grepper#enabled = 1

""""""""""""""""""""""""""""""
" =>vimspecto
""""""""""""""""""""""""""""""
" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
