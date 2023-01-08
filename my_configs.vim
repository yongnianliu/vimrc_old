"""""""""""""""""""""""""""""
" => Base config
""""""""""""""""""""""""""""""
:set number
set clipboard+=unnamed
set clipboard+=unnamedplus
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
if has("win32")
    if IsWSL()
        nnoremap <esc>^[ <esc>^[
    endif
endif

" Change shell to wsl
if has("win32")
    " set shell=C:/Windows/System32/wsl.exe
    " set shellpipe=|
    " set shellredir=>
    " set shellcmdflag=
elseif has("unix")
    set shell=/usr/bin/bash
endif

call plug#begin('~/.vim_runtime/my_plugins')
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion'
Plug 'yianwillis/vimcdoc'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ronakg/quickr-preview.vim'
Plug 'puremourning/vimspector'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'liuchengxu/vista.vim'
Plug 'voldikss/vim-floaterm'
Plug 'airblade/vim-rooter'
Plug 'wsdjeg/FlyGrep.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc'  }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins'  }
" Plug 'cdelledonne/vim-cmake'
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
" Plug 'mcchrish/nnn.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'dyng/ctrlsf.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
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
    " set background=dark
    " colorscheme gruvbox
    colorscheme onedark
catch
    echo "caught" .. v:exception
endtry

if has("nvim")
    set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h12
else
    if has("gui_running")
        if has("gui_gtk2")
            set guifont=Inconsolata\ 12
        elseif has("gui_macvim")
            set guifont=Menlo\ Regular:h14
        elseif has("gui_win32")
            " set guifont=DejaVuSansMono\ Nerd\ Font\ Mono:h11
            " set guifont="SourceCodePro\ NF:h11"
            " set guifont=SauceCodePro\ Nerd\ Font\ Mono:h12
            " set guifont=JetBrains\ Mono:h12
            " set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h12
            set guifont=JetBrainsMono\ NFM:h12
        endif
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
  let g:FlyGrep_search_tools = 'rg'
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
nunmap <c-p>
nnoremap <c-p> :FZF <CR>
" let g:ctrlp_map = '<C-p>'
" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
" if filereadable(expand("$HOME/.fzf/fzf_preview.py"))
"     let $FZF_DEFAULT_OPTS='--height 90% --layout=reverse --bind=alt-j:down,alt-k:up,alt-i:toggle+down --border --preview "echo {} | ~/.fzf/fzf_preview.py" --preview-window=down'
" endif
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
try
    source ~/.vim_runtime/my_configs/vimspector.vim
catch
endtry

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
" try
"     source ~/.vim_runtime/my_configs/vim-grepper.vim
" catch
"     echo "caught" .. v:exception
" endtry
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
" let g:floaterm_keymap_new = '<Leader>ft'
" let g:floaterm_keymap_toggle = '<Leader>ft'
" let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_wintype = 'split'
let g:floaterm_position = 'bottom'
let g:floaterm_keymap_toggle = '<F12>'
" nnoremap   <silent>   <F12>   :FloatermToggle<CR>
" tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
if has('unix')
    nnoremap <silent> <leader>fff :<c-u>FloatermNew fff<CR>
    nnoremap <silent> <leader>nnn :<c-u>FloatermNew nnn<CR>
endif
nnoremap <silent> <leader>lg :<c-u>FloatermNew lazygit<CR>
"""""""""""""""""""""""""""""
" => ctrlsf
""""""""""""""""""""""""""""""
" nmap     <C-F>f <Plug>CtrlSFPrompt
" vmap     <C-F>f <Plug>CtrlSFVwordPath
" vmap     <C-F>F <Plug>CtrlSFVwordExec
" nmap     <C-F>n <Plug>CtrlSFCwordPath
" nmap     <C-F>p <Plug>CtrlSFPwordPath
" nnoremap <C-F>o :CtrlSFOpen<CR>
" nnoremap <C-F>t :CtrlSFToggle<CR>
" inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
" let g:ctrlsf_auto_preview = 1
""""""""""""""""""""""""""""""
" => vim-rooter
""""""""""""""""""""""""""""""
let g:rooter_patterns = ['.git', '.svn', 'Makefile', '*.sln', 'build/env.sh', '.vim']
""""""""""""""""""""""""""""""
" => FlyGrep
""""""""""""""""""""""""""""""
nunmap <C-f>
nnoremap <silent> <C-f> :FlyGrep<CR>
let g:_spacevim_if_lua = 1
let g:FlyGrep_input_delay = 100
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

""""""""""""""""""""""""""""""
" => fzf-preview
""""""""""""""""""""""""""""""
nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]

nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> [fzf-p]ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> [fzf-p]g;    :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> [fzf-p]/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          [fzf-p]gr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]t     :<C-u>CocCommand fzf-preview.BufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>CocCommand fzf-preview.LocationList<CR>
if executable('bat')
    let g:fzf_preview_command = 'bat --color=always --plain {-1}' " Installed bat"
elseif executable('batcat')
    let g:fzf_preview_command = 'batcat --color=always --plain {-1}' " Installed bat"
endif
