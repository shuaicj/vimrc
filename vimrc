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
" 快速注释
Plugin 'scrooloose/nerdcommenter'
" 文件快速定位
Plugin 'kien/ctrlp.vim'
" 彩色状态栏
Plugin 'Lokaltog/vim-powerline'
" 缩进对齐线
Plugin 'Yggdroot/indentLine'
" tags浏览
"Plugin 'taglist.vim'
" 快速切换.cpp和.h
Plugin 'a.vim'
" 粘贴时自动 set paste
Plugin 'ConradIrwin/vim-bracketed-paste'
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
"set mouse=a                         " 启用鼠标
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
set nowrap                          " 设置不自动换行
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
nmap <silent> <C-A> ggvG$  
  
" 选中状态下 Ctrl+C 复制到系统剪贴板  
"vmap <C-C> "+y  
  
" 从系统剪贴板粘贴 Ctrl+V  
"nmap <silent> <C-V> "+p  
  
" 窗口操作
"nmap <C-H> <C-W>h  
"nmap <C-L> <C-W>l  
"nmap <C-J> <C-W>j  
"nmap <C-K> <C-W>k 
nmap wh <C-W>h  
nmap wl <C-W>l  
nmap wj <C-W>j  
nmap wk <C-W>k 
nmap w= :resize +3<CR>
nmap w- :resize -3<CR>
nmap w, :vertical resize -3<CR>
nmap w. :vertical resize +3<CR>
" --------------------  Vim 基本设置   -------------------- }


" --------------------  插件具体设置   -------------------- {
" supertab 
let g:SuperTabDefaultCompletionType = '<C-N>'           " 向下循环补全列表

" AutoComplPop
let g:acp_behaviorKeywordLength = 3                     " 第3个字符触发补全
let g:acp_completeOption = '.,w,b,u,t,i,k'              " complete的参数

" nerdtree 
nmap <F9> :NERDTreeToggle<CR>
let NERDTreeWinPos = 'left'                             " 窗口位置，or 'right'
let NERDTreeWinSize = 35                                " 窗口宽度
let NERDTreeDirArrows = 1                               " 目录前面显示箭头
let NERDTreeHighlightCursorline = 0                     " 不高亮光标行

" nerdcommenter
map <F8> <leader>c<space>
let g:NERDDefaultAlign = 'left'                         " 注释符号在最左边

" ctrlp
let g:ctrlp_by_filename = 0                             " 只用文件名匹配
let g:ctrlp_regexp = 0                                  " 禁用正则匹配
let g:ctrlp_open_new_file = 'h'                         " 创建新文件时用水平split
let g:ctrlp_open_multiple_files = 'h'                   " 打开多个文件用水平split

" powerline 
let g:Powerline_symbols = 'unicode'                     " 用Unicode字符模拟图标和箭头

" taglist
nmap <F10> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1                          " 窗口位置 
let Tlist_WinWidth = 25                                 " 窗口宽度

" a.vim
nmap <F11> :A<CR>


" --------------------  插件具体设置   -------------------- }


" --------------------   ctags 设置    -------------------- {
set tags+=~/.vim/ctags/cocos2d-x-2.2-lua.tags
set tags+=~/.vim/ctags/cocos2d-x-3.5.tags
set tags+=~/.vim/ctags/quick-2.2.1.tags
set tags+=~/.vim/ctags/HookHeros.tags 
"nmap <F12> :!ctags --languages=C++ 
"    \ -f ~/.vim/ctags/cocos2d-x-3.5.tags 
"    \ -R ~/Documents/cocos2d-x-3.5<CR>
"nmap <F12> :!ctags --languages=Lua 
"    \ -f ~/.vim/ctags/HookHeros.tags 
"    \ -R ~/Documents/HookHeroes/quick-cocos2d-x-2.2.1-rc/bin/hookheros/scripts<CR>
" --------------------   ctags 设置    -------------------- }
