set clipboard+=unnamed
syntax on
filetype plugin indent on
set noswapfile
hi Comment ctermfg=lightblue
hi netrwDir ctermfg=Blue
hi Search ctermfg=black
hi DiffAdd cterm=underline ctermfg=red ctermbg=black
hi DiffChange cterm=underline ctermfg=blue ctermbg=black
hi DiffText cterm=underline ctermfg=yellow ctermbg=black

" Depend on the specified path of Python built manually.
let g:python3_host_prog = $HOME.'/repos/cpython/py3/latest/bin/python3'

" For https://github.com/FGtatsuro/scrapbox.nvim
let &runtimepath.=','.$HOME.'/.config/nvim/bundle/scrapbox.nvim'
let g:scrapbox#project_url='https://scrapbox.io/fujiistorage-83609993'
