" -------------------- Vundle 起始设置 -------------------- {
set nocompatible                    " 关闭兼容模式，Vundle必须
filetype off                        " 关闭类型检测，Vundle必须

" 设置Vundle的runtime path -- linux版本
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 设置Vundle的runtime path -- win版本
" set rtp+=D:/Software/Vim/vimfiles/bundle/Vundle.vim/
" call vundle#begin('D:/Software/Vim/vimfiles/bundle/')  

" 让Vundle管理自己
Plugin 'gmarik/Vundle.vim'
" -------------------- Vundle 起始设置 -------------------- }


" -------------------- Vundle 所有插件 -------------------- {
" 用tab触发补全
Plugin 'ervandew/supertab'
" 自动弹出补全
Plugin 'AutoComplPop'
" 文件浏览
Plugin 'scrooloose/nerdtree'
" nerdtree 增强标签页操作
Plugin 'jistr/vim-nerdtree-tabs'
" 快速注释
Plugin 'scrooloose/nerdcommenter'
" 文件快速定位
Plugin 'ctrlpvim/ctrlp.vim'
" 缩进对齐线
Plugin 'Yggdroot/indentLine'
" tags浏览
"Plugin 'taglist.vim'
" 快速切换.cpp和.h
Plugin 'a.vim'
" 粘贴时自动 set paste
Plugin 'ConradIrwin/vim-bracketed-paste'
" onedark主题
Plugin 'joshdick/onedark.vim'
" 状态栏 影响tab line和status line
Plugin 'itchyny/lightline.vim'
" 高亮搜索结果后自动去高亮
Plugin 'romainl/vim-cool'
" -------------------- Vundle 所有插件 -------------------- }


" -------------------- Vundle 结束设置 -------------------- {
call vundle#end()                  
filetype plugin indent on           " 启用插件和缩进, Vundle必须
" -------------------- Vundle 结束设置 -------------------- }


" -------------------- Vundle 命令提示 -------------------- {
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" -------------------- Vundle 命令提示 -------------------- }


" --------------------  Vim 基本设置   -------------------- {
set shiftwidth=4                    " tab宽度
set tabstop=4
set softtabstop=4
set smarttab
set expandtab                       " tab自动转化空格
set backspace=indent,eol,start      " 退格键可用
set whichwrap=b,s,<,>,[,]           " 光标从行首和行末时可以跳到另一行去
set autoindent                      " 自动缩进
set smartindent                     " 智能缩进
set cindent                         " C语言式缩进
set cinoptions=g0,i0                " public, private关键字顶格；构造函数初始化列表顶格
set number                          " 显示行号
set mouse=a                         " 启用鼠标
set ruler                           " 显示光标位置
set incsearch                       " 实时搜索
set hlsearch                        " 高亮搜索结果
set ignorecase                      " 搜索时智能忽略大小写
set smartcase                      
set scrolloff=5                     " 光标保持离底边5行
set autochdir                       " 自动cd到当前目录
set laststatus=2                    " 始终显示状态栏
set autoread                        " 当文件在外部被修改时自动更新该文件
set nobackup                        " 不生成备份文件
set noswapfile                      " 不生成swap文件
"set nowrap                          " 设置不自动换行
set history=50                      " vim最多记住50条历史命令
set showcmd                         " 命令提示
set noerrorbells                    " 关闭响铃
set novisualbell
set showmatch                       " 高亮匹配的括号
set confirm                         " 不能保存时弹出确认框
"set colorcolumn=100                 " 高亮指定列
set foldmethod=indent               " 按缩进折叠代码
set nofoldenable                    " 打开文件时默认不折叠
set foldlevel=10                    " 保证第一次折叠时不会折叠全部

" 语法高亮
syntax enable                      
syntax on                    

" 设置编码
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

" 打开文件时自动定位到上次位置
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" 全选 Ctrl+A
nnoremap <silent> <C-A> ggvG$
  
" 选中状态下 Ctrl+C 复制到系统剪贴板  
vnoremap <C-C> "+y
"vnoremap <C-C> :w !pbcopy<CR>

" 从系统剪贴板粘贴 Ctrl+V  
"nnoremap <silent> <C-V> "+p
  
" 窗口操作
nnoremap wh <C-W>h
nnoremap wl <C-W>l
nnoremap wj <C-W>j
nnoremap wk <C-W>k
nnoremap w= :resize +3<CR>
nnoremap w- :resize -3<CR>
nnoremap w, :vertical resize -3<CR>
nnoremap w. :vertical resize +3<CR>

" 标签页跳转
nnoremap 1t 1gt
nnoremap 2t 2gt
nnoremap 3t 3gt
nnoremap 4t 4gt
nnoremap 5t 5gt
nnoremap 6t 6gt
nnoremap 7t 7gt
nnoremap 8t 8gt
nnoremap 9t 9gt
nnoremap 0t :tablast<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
" Go to last active tab
au TabLeave * let g:last_active_tab = tabpagenr()
nnoremap <silent> <C-Up> :exe "tabn ".g:last_active_tab<CR>
nnoremap <silent> <C-Down> :exe "tabn ".g:last_active_tab<CR>
" --------------------  Vim 基本设置   -------------------- }


" --------------------  插件具体设置   -------------------- {
" supertab 
let g:SuperTabDefaultCompletionType = '<C-N>'           " 向下循环补全列表

" AutoComplPop
let g:acp_behaviorKeywordLength = 3                     " 第3个字符触发补全
let g:acp_completeOption = '.,w,b,u,t,i,k'              " complete的参数

" nerdtree 
nnoremap <F9> :NERDTreeToggle<CR>
let NERDTreeWinPos = 'left'                             " 窗口位置，or 'right'
let NERDTreeWinSize = 35                                " 窗口宽度
let NERDTreeShowHidden = 1                              " 显示隐藏文件
let NERDTreeSortOrder = ['^[^.].*\/$','\/$','*','^\.']  " 排列顺序
let NERDTreeDirArrows = 1                               " 目录前面显示箭头
let NERDTreeHighlightCursorline = 1                     " 1:高亮光标行 0:不高亮
" Start NERDTree. If a file is specified, move the cursor to its window.
if !(&diff) " not in diff mode
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" nerdcommenter
map <C-_> <leader>c<space>
let g:NERDDefaultAlign = 'left'                         " 注释符号在最左边
let g:NERDSpaceDelims = 1                               " 注释符号后跟一个空格符
let g:NERDAltDelims_python = 1                          " 指定python注释符后仅一空格

" ctrlp
let g:ctrlp_by_filename = 0                             " 1:只用文件名匹配，0:还含路径
let g:ctrlp_regexp = 0                                  " 禁用正则匹配
let g:ctrlp_open_new_file = 't'                         " 创建新文件时用新标签页
let g:ctrlp_open_multiple_files = 't'                   " 打开多个文件用新标签页
let g:ctrlp_tabpage_position = 'al'                     " 在最后一个标签页后打开新标签页
let g:ctrlp_show_hidden = 1                             " 搜索隐藏文件
" 不搜索特定文件夹或文件（正则）
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|svn|idea)$',
    \ 'file': '\v\.(DS_Store|iml)$',
    \ }
" 回车后在标签页打开，默认是Ctrl+t
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

" taglist
nnoremap <F10> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1                          " 窗口位置 
let Tlist_WinWidth = 25                                 " 窗口宽度

" a.vim
nnoremap <F11> :A<CR>

" colorscheme 启用顔色主题
colorscheme onedark

" lightline
let g:lightline = { 'colorscheme': 'jellybeans' }

" --------------------  插件具体设置   -------------------- }


" --------------------   ctags 设置    -------------------- {
"set tags+=~/.vim/ctags/cocos2d-x-3.5.tags
"nnoremap <F12> :!ctags --languages=C++
"    \ -f ~/.vim/ctags/cocos2d-x-3.5.tags 
"    \ -R ~/Documents/cocos2d-x-3.5<CR>
" --------------------   ctags 设置    -------------------- }
