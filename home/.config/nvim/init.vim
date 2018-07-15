set clipboard+=unnamed
syntax on
filetype plugin indent on
set noswapfile
hi Comment ctermfg=lightblue
hi netrwDir ctermfg=Blue
hi Search ctermfg=black

" Depend on the specified path of Python built manually.
let g:python3_host_prog = $HOME.'/repos/cpython/py3/latest/bin/python3'
