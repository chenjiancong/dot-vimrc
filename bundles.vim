set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'Shougo/neocomplcache'
" 网页编辑
Bundle 'mattn/emmet-vim'
"自动匹配括号
Bundle 'Raimondi/delimitMate'
"Bundle 'ervandew/supertab'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

" 快速移动 Fast navigation
Bundle 'Lokaltog/vim-easymotion'
" 快速选中区块
Bundle 'terryma/vim-expand-region'
" 多光标选中编辑
Bundle 'terryma/vim-multiple-cursors'

"--------------
" Fast editing
"--------------
" 快速添加环绕符号
Bundle 'tpope/vim-surround'
" 批量快速注释插件
Bundle 'scrooloose/nerdcommenter'
" 撤销退回
"Bundle 'sjl/gundo.vim'
Bundle 'mbbill/undotree'
Bundle 'godlygeek/tabular'

"垂直对齐线
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
" 在项目里全局搜索某个单词，比如搜索函数名的时候
Bundle 'mileszs/ack.vim'
"快速查找项目中文件
Bundle 'kien/ctrlp.vim'

" 自动格式化代码（调用autopep8进行格式化）
" 需要先安装autopep8
" pip install autopep8
Bundle 'Chiel92/vim-autoformat'
Bundle 'tpope/vim-fugitive'

"静态代码分析
Bundle 'scrooloose/syntastic'

" 将代码行最后无效的空格标红
Bundle 'bronson/vim-trailing-whitespace'

" 开关鼠标图标
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Bundle 'lepture/vim-jinja'

"python syntax highlight
Bundle 'hdima/python-syntax'
"python 补全
"Bundle "davidhalter/jedi"

"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
" jQuery高亮
Bundle 'nono/jquery.vim'

"------- markup language -------
""高亮语法
Bundle 'tpope/vim-markdown'
"浏览器预览
Bundle 'iamcco/markdown-preview.vim'
"支持数学公式
Bundle 'iamcco/mathjax-support-for-mkdp'
" 括号高亮
Bundle 'kien/rainbow_parentheses.vim'

"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

filetype plugin indent on     " required!
