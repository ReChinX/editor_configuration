syntax on
filetype on
filetype plugin indent on
set laststatus=2
set encoding=utf-8
set nocompatible
set number "显示行号
set tabstop=4 "tab长度为4
set hlsearch "搜索时高亮
"自动缩进
set autoindent
set cindent
"统一缩进
set softtabstop=4
set shiftwidth=4
set smarttab
set ruler "显示光标位置
set expandtab "空格代替制表符

"括号补全
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

"编辑模式光标移动
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-f> <PageDown>
inoremap <C-b> <PageUp>

"c,c++一键编译运行
map <F5> :call CompileAndRun()<CR>
func! CompileAndRun()
	exec "w"
	if &filetype == 'cpp'
		exec "!/usr/local/bin/g++-7 -std=c++14  % -o %< ; ./%<"
	elseif &filetype == 'c'
		exec "!/usr/local/bin/g++-7  % -o %c; ./%<"
	endif
endfunc

