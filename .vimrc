let mapleader=";" "定义快捷键的前缀,即<Leader>
filetype off                  " required
syntax on
 " 根据侦测到的不同类型加载对应的插件
filetype plugin on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch "设置实时搜索功能"
set ignorecase  "搜索时大小写不敏感"
set nocompatible "关闭兼容模式"
set wildmenu "vim 自身命令行模式智能补全"
set lines=999 columns=9999
set guifont=Sauce\ Code\ Powerline:h16


" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
"高亮显示搜索结果
set hlsearch"
set ruler

set cindent
set autoindent
" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
set smarttab

" 定义快捷键到行首和行尾
nmap <Leader>lb 0
nmap <Leader>le $
" " 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" " 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" " 定义快捷键关闭当前分割窗口
nmap <Leader>q :q!<CR>
" " 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" " 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" " 依次遍历子窗口
nnoremap nw <C-W><C-W>
" " 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" " 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" " 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" " 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" " 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %
:map <F10> :set paste<CR> :map <F11> :set nopaste<CR>

"插入模式下光标移动
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-u> <esc>gUiwea

set rtp+=/usr/local/Cellar/macvim/7.4-86/MacVim.app/Contents/Resources/vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/zencoding-vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'szw/vim-tags'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/YouCompleteMe'
Plugin 'powerline/fonts'
Plugin 'easymotion/vim-easymotion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'wting/autojump'
Plugin 'qpkorr/vim-bufkill'
Plugin 'moll/vim-node'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"
" 
"
" 
"
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///Users/runingday/.vim/plugins'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'user/L9', {'name':'newL9'}
" Avoid a name conflict with L9
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'gosukiwi/vim-atom-dark'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax enable
syntax on
"set background=light

if has("gui_running") 
    set guioptions-=m " 隐藏菜单栏 
    set guioptions-=T " 隐藏工具栏 
    set guioptions-=L " 隐藏左侧滚动条 
    set guioptions-=r " 隐藏右侧滚动条 
    set guioptions-=b " 隐藏底部滚动条 
    set showtabline=0 " 隐藏Tab栏 
    set background=dark
endif 
"colorscheme solarized
colorscheme atom-dark-256
"设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <F7> :NERDTreeToggle<CR>
autocmd bufenter *if (winnr("$") == 1 && exists("b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowBookmarks = 1

""""""""""""""""""""Yggroot/indentLine"""""""""""""""""""
let g:indentLine_color_term = 239
let g:indentLine_char = 'c'
"let g:indentLine_concealcursor = 'vc' (default 'inc')
let g:indentLine_conceallevel = 0 "(default 2)
let g:indentLine_enabled = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ----- Raimondi/delimitMate settings -----


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
"nmap <silent> <Leader>i <Plug>IndentGuidesToggle

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

let g:ycm_global_ycm_extra_conf="/Users/runingday/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_complete_in_comments = 1
let g:syntastic_always_populate_loc_list = 1
let g:ycm_collect_identifiers_from_tags_files = 1

set completeopt-=preview

let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_key_invoke_completion = '<C-o>'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'


"""""""""""""""""""""""ctags""""""""""""""""""""""
set exrc
set secure

let g:vim_tags_auto_generate = 1
let g:ctags_statusline = 1
let g:vim_tags_project_tags_command = "{CTAGS} -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_gems_tags_command = "{CTAGS} -R {OPTIONS} `bundle show --paths` 2>/dev/null"
let g:vim_tags_use_vim_dispatch = 0
let g:vim_tags_use_language_field = 1
let g:vim_tags_ignore_files = ['.gitignore', '.svnignore', '.cvsignore']
let g:vim_tags_ignore_file_comment_pattern = '^[#"]'
let g:vim_tags_directories = [".git", ".hg", ".svn", ".bzr", "_darcs", "CVS"]
let g:vim_tags_main_file = 'tags'
let g:vim_tags_extension = '.tags'
let g:vim_tags_cache_dir = expand($HOME)

"""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>n <plug>NERDTreeTabsToggle<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"
""""""""""""""""""powerline/fonts""""""""""""
"设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

"""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat)

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

"""""""""""""""""""""""""""""""""""""""""""""""""


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

nnoremap <Leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

nmap <F8> :TagbarToggle<CR>

let g:UltiSnipsExpandTrigger="<D-k>"
let g:UltiSnipsEditSplit="vertical"



let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
"nnoremap gl :YcmCompleter GoToDeclaration<CR>
"nnoremap gf :YcmCompleter GoToDefinition<CR>
"nnoremap gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nmap <F4> :YcmDiags<CR>

""""""""""""""""tumx""""""""""""""""""""""""""""""""""""""""
"""""如果在tmux.conf里面做了配置，在这里就不需要再做配置下面内容为注释的内容""""""
"let g:tmux_navigator_no_mappings = 1

"nnoremap <silent> <C-l> :TmuxNavigateLeft<cr>
"nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
"nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <C-h> :TmuxNavigateRight<cr>
"nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>
"let g:tmux_navigator_save_on_switch = 1



" <f5> 编译和运行C
map <f5> :call CompileRunGcc()<cr>
func! CompileRunGcc()
exec "w"
exec "!gcc % -o %<"
exec "! ./%<"
endfunc

"< F5> 编译和运行C++
map <f5> :call CompileRunGpp()<cr>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc"

"< F9> gdb调试c++
map <f9> :call Debug()<cr>
func! Debug()
exec "w"
exec "!gcc % -o %< -gstabs+"
exec "!gdb %<"
endfunc"
