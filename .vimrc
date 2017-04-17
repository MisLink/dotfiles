set nocompatible  " 关闭 vi 兼容模式
set encoding=utf-8  " utf-8 编码
set mouse=a
syntax on  " 自动语法高亮
set expandtab  "
set number  " 显示行号
set tabstop=4  " 设定 tab 长度为 4
set cursorline  " 突出显示当前行
set ruler  " 打开状态栏标尺
set softtabstop=4  " 使得按退格键时可以一次删掉 4 个空格
set showcmd  " 在状态栏显示正在输入的命令
set backspace=indent,eol,start  " backspace可以跨行
set autoindent  " 自动缩进
set shiftwidth=4  " >> 缩进 4 个空格
set incsearch  " 增强搜索
set showmatch  " 显示匹配括号
set textwidth=1000  " 文本宽度
set autochdir  " 自动切换当前目录为当前文件所在的目录
set hlsearch  " 搜索时高亮显示被找到的文本
set smartindent  " 开启新行时使用智能自动缩进
set laststatus=2  " 显示状态栏
set wildmenu
highlight CursorLine cterm=NONE ctermbg=darkgrey ctermfg=NONE guibg=NONE guifg=NONE
