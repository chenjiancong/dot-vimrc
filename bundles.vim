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
Bundle 'Valloric/YouCompleteMe'
Bundle 'Shougo/neocomplcache'
Bundle 'mattn/emmet-vim'
"自动匹配括号
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
" snippets C/C++ 输入inc 按TAB键自动完整
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
"注释插件
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
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
Bundle 'mileszs/ack.vim'
"快速查找项目中文件
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
"静态代码分析
Bundle 'scrooloose/syntastic'
"标志无效空格
Bundle 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'lepture/vim-jinja'

"python syntax highlight
Bundle 'hdima/python-syntax'
"python 补全
Bundle "davidhalter/jedi"

"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nono/jquery.vim'

"------- markup language -------
Bundle 'tpope/vim-markdown'

"------- FPs ------
"括号高亮
Bundle 'kien/rainbow_parentheses.vim'

"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'powerline/powerline'

filetype plugin indent on     " required!
