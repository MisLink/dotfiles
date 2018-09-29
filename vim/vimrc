" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 自动缩进
filetype indent on

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 关闭兼容模式
set nocompatible
" 开启实时搜索功能
set incsearch
" 搜索时忽略大小写
set ignorecase
" 搜索时如果只包含小写字母，匹配结果忽略大小写，如果包含大写字母，匹配结果是大小写敏感
set smartcase
"vim 命令自动补全
set wildmenu
" 文件自动更新
set autoread
" 禁止关闭闪烁
set gcr=a:block-blinkon0
" 总是显示状态栏
set laststatus=2
" 显示光标位置
set ruler
" 显示行号
set number
" 高亮显示当前行
set cursorline
" 高亮显示搜索结果
set hlsearch
" 回退键生效
set backspace=2
" 启用鼠标
" set mouse=a
" 显示匹配括号
set showmatch
" 在状态栏显示正在输入的命令
set showcmd

" 禁止显示滚动条
" set guioptions-=l
" set guioptions-=L
" set guioptions-=r
" set guioptions-=R

" 禁止显示菜单和工具条
" set guioptions-=m
" set guioptions-=T

" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 基于缩进或语法进行代码折叠
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 打开上次文件关闭的位置
if has("autocmd")
   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd filetype crontab setlocal nobackup nowritebackup
