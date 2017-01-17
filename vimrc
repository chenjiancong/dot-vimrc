source ~/.vim/bundles.vim

"==========================================
" FileEncode Settings 文件编码,格式
"==========================================

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B

" 检测文件类型
filetype on

" 针对不同的文件类型采用不同的缩进格式
filetype indent on

" 文件修改之后自动载入
set autoread

" 取消备份
set nobackup

" 关闭交换文件
set noswapfile

" 设置 退出vim后，内容显示在终端屏幕，可以用于查看和复制，不需要可以去掉
" 好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=

" encoding dectection 自动判断编码时，依次尝试以下编码:
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set helplang=cn

" 设置新文件的编码为 UTF-8
set encoding=utf-8
"
" 下面这句只影响普通模式 （非图形界面）下的vim
set termencoding=utf-8

" 启用自动补全 enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" 开启语法高亮
syntax on

" 设置文内智能搜索提示
" 高亮search命中的文本
set hlsearch
" 打开增量搜索模式，随着键入即时搜索
set incsearch
" 搜索时忽略大小定
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase

"==========================================
" Theme Settings  主题设置
"==========================================
syntax enable
set background=dark
set t_Co=256
colorscheme solarized
let g:molokai_original = 1
let g:rehash256 = 1
set term=screen-256color

" 防止tmux下vim的背景色显示异常
if &term =~ '256color'
    set t_ut=
endif

"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" 防止错误整行标红导致看不清, for error highlight
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" 突出显示当前行
set cursorline
" 突出显示当前列
set cursorcolumn

" 显示行号
set number

"相对行号
set relativenumber
"
" 显示当前行号列号
set ruler

" 括号配对情况，跳转并高亮一下匹配的括号
set showmatch
" How many tenths of a second to blink when matching brackets
set matchtime=2

" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

" change the terminal's title
set title
" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html

" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber

" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" history存储容量
set history=2000
set nocompatible
" disable folding
set nofoldenable
" prompt when existing from an unsaved file
set confirm
" More powerful backspacing
set backspace=indent,eol,start
" Explicitly tell vim that the terminal has 256 colors "
set t_Co=256
" 鼠标暂不启用
set mouse=a
set report=0

" 取消换行 don't wrap lines
set nowrap
" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=7

" Remember info about open buffers on close
set viminfo^=%

" 缩进配置 Default Indentation
" 打开自动缩进
set autoindent
" Smart indent
set smartindent     " indent when

" 00x增减数字时使用十进制
set nrformats=

" Tab键相关变更
" 设置Tab键宽宽 tab width
set tabstop=4
" 按退格键可以一次删除 4 个空格
set softtabstop=4
" 每一次缩进对应的空格数
set shiftwidth=4
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" 插件设置 Plugin settings
"-----------------

"对齐线(方块)
let g:indent_guides_enable_on_vim_startup = 1

" Rainbow parentheses for Lisp and variants 括号自动高亮
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
"防止黑色括号出现,很难识别
"    \ ['black',       'SeaGreen3'],
let g:rbpt_max = 16
"autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" 快速跳转 easy-motion  \\w
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter ,shift + v 选中; leader + cc 注释； leader + cu 取消注释
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" powerline
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set guifont=Consolas\ for\ Powerline\ FixedD:h11

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

" SuperTab
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp Ctrl+p,快速查找项目中文件
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

"==========================================
" 快捷键设置
"==========================================

" F1 取消帮助提示
noremap <F1> <Esc>

" F2 粘贴
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" F3
nmap <F3> :GundoToggle<cr>

" F4 显示垂直对齐线
nmap <F4> :IndentGuidesToggle<cr>

" F5 开关标签导航
nmap <F5> :TagbarToggle<cr>

" F6 开关目录树导航
nmap <F6> :NERDTreeToggle<cr>

" F7 开关行号显示，方便复制
function! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
nnoremap <F7> :call HideNumber()<CR>

" F8 开关语法高亮
nnoremap <F8> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" F9 开关鼠标显示
"nmap <F9> :togglemouse<cr>
" 想不出如何重新映射热键，只能修改vim-togglemouse/plugin里的文件

" F10 执行python F10 to run python script
nnoremap <buffer> <F10> :exec '!python' shellescape(@%, 1)<cr>

nmap  <D-/> :
nnoremap <leader>a :Ack
" 快速全选
nnoremap <leader>v V`]

""跳转最后一行
nnoremap <CR> G
"跳转首行
nnoremap <BS> gg

"用jj取代ESC键
inoremap jj <ESC>

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 是否当前用户可写
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" w!! to sudo & write a file 强制保存
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" sublime key bindings
nmap <D-]> >>
nmap <D-[> <<
vmap <D-[> <gv
vmap <D-]> >gv

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" vimrc文件修改之后自动加载。 linux
autocmd! bufwritepost .vimrc source %

"==========================================
" Python 设置
"==========================================

"syntastic检查python
let g:syntastic_ignore_files=[".*\.py$"]

"python 语法高亮
let python_highlight_all = 1

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai

" 保存python文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" 定义函数AutoSetFileHead，自动插入文件头
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    "如果文件类型为python
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc
