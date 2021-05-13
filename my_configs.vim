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
 
"highlight CursorLine cterm=none ctermbg=236
"highlight CursorColumn cterm=none ctermbg=236
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
Plug 'vim-airline/vim-airline'
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/vim-quickui'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'
" Plug 'davidhalter/jedi-vim'
" Plug 'Valloric/YouCompleteMe'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'uguu-org/vim-matrix-screensaver'
Plug 'ronakg/quickr-preview.vim'
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
let $GTAGSLABEL = 'native-pygments'
if has("win32")
    let $GTAGSCONF = 'G:\software\glo663wb\share\gtags\gtags.conf'
elseif has("mac")
    let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'
endif

""""""""""""""""""""""""""""""
" => vim-gutentags
""""""""""""""""""""""""""""""
" " gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
" let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" " 所生成的数据文件的名称
" let g:gutentags_ctags_tagfile = '.tags'

" let g:gutentags_modules = []
" if executable('ctags')
" 	let g:gutentags_modules += ['ctags']
" endif
" if executable('gtags-cscope') && executable('gtags')
" 	" let g:gutentags_modules += ['gtags_cscope']
" endif

" " let g:gutentags_cache_dir = expand('~/.cache/tags')
" let s:vim_tags = expand('~/.cache/tags')
" let g:gutentags_cache_dir = s:vim_tags

" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" " let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" let g:gutentags_auto_add_gtags_cscope = 0
" let g:gutentags_define_advanced_commands = 1
" set tags+=~/.cache/tags/stdlib.tags
""""""""""""""""""""""""""""""
" => YouCompleteMe 
""""""""""""""""""""""""""""""
" let g:ycm_add_preview_to_completeopt = 0
" let g:ycm_show_diagnostics_ui = 0
" let g:ycm_server_log_level = 'info'
" let g:ycm_min_num_identifier_candidate_chars = 2
" let g:ycm_collect_identifiers_from_comments_and_strings = 1
" let g:ycm_complete_in_strings=1
" " let g:ycm_key_invoke_completion = '<c-z>'
" set completeopt=menu,menuone

" " noremap <c-z> <NOP>

" let g:ycm_semantic_triggers =  {
"             \ 'c,cpp<Plug>PeepOpenython,java,go,erlang<Plug>PeepOpenerl': ['re!\w{2}'],
"             \ 'cs,lua,javascript': ['re!\w{2}'],
"             \ }

" let g:ycm_global_ycm_extra_conf='~/.vim_runtime/.ycm_extra_conf.py'
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
let g:session_autoload = 'no'

""""""""""""""""""""""""""""""
" => Tagbar 
""""""""""""""""""""""""""""""
nnoremap <leader>tb :TagbarOpenAutoClose<CR>
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
let g:quickr_preview_keymaps = 0
let g:quickr_preview_on_cursor = 1

""""""""""""""""""""""""""""""
" => Kite
""""""""""""""""""""""""""""""
" Python, JavaScript, Go
" let g:kite_supported_languages = ['python', 'javascript', 'go']

" All the languages Kite supports
" let g:kite_supported_languages = ['*']

" Turn off Kite
" let g:kite_supported_languages = []

" set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
" set laststatus=2  " always display the status line

""""""""""""""""""""""""""""""
" => sumneko/lua-language-server
""""""""""""""""""""""""""""""
" let lua_lsp = glob('~/.vscode/extensions/sumneko.lua*', 0, 1)
" if len(lua_lsp)
"     let lua_lsp = lua_lsp[-1] . '\server'
"     call coc#config('languageserver', {
"         \ 'lua-language-server': {
"         \     'cwd': lua_lsp,
"         \     'command': lua_lsp . '\bin\Windows\lua-language-server.exe',
"         \     'args': ['-E', '-e', 'LANG="zh-cn"', lua_lsp . '\main.lua'],
"         \     'filetypes': ['lua'],
"         \ }
"     \ })
" endif

""""""""""""""""""""""""""""""
" => Fix The legacy SnipMate parser is deprecated. Please see :h SnipMate-deprecate.
""""""""""""""""""""""""""""""
let g:snipMate = { 'snippet_version' : 1 }
