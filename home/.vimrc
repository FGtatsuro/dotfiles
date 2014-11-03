syntax on
set number
set expandtab
set noswapfile
set visualbell t_vb=
set nocompatible
set backspace=indent,eol,start

filetype plugin indent on
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
autocmd BufNewFile *.py 0r ~/.vim/template/template.py
autocmd BufNewFile *.htm 0r ~/.vim/template/template.html
autocmd BufNewFile *.html 0r ~/.vim/template/template.html

runtime macros/matchit.vim
