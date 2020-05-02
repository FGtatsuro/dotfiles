set clipboard+=unnamed
syntax on
filetype plugin indent on
set noswapfile
set background=dark

" Depend on the specified path of Python built manually.
let g:python3_host_prog = $HOME.'/repos/cpython/py3/latest/bin/python3'

" For https://github.com/FGtatsuro/scrapbox.nvim
let &runtimepath.=','.$HOME.'/.config/nvim/bundle/scrapbox.nvim'
let g:scrapbox#project_url='https://scrapbox.io/fujiistorage-83609993'

set fileformat=unix
set fileformats=unix,dos
set fileencoding=utf-8
set fileencodings=utf-8,cp932
