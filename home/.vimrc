if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

syntax on
set number
set expandtab
set noswapfile
set visualbell t_vb=
set backspace=indent,eol,start
set clipboard+=unnamed

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
autocmd BufNewFile *.py 0r ~/.vim/template/template.py
autocmd BufNewFile *.htm 0r ~/.vim/template/template.html
autocmd BufNewFile *.html 0r ~/.vim/template/template.html

runtime macros/matchit.vim

" NeoBundle setting
call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundle 'jmcantrell/vim-virtualenv'
  NeoBundle 'davidhalter/jedi-vim'
  NeoBundle 'fatih/vim-go'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

set shell=/usr/local/bin/zsh
