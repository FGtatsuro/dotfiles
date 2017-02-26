if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

syntax on
set number
"set relativenumber
set expandtab
set noswapfile
set visualbell t_vb=
set backspace=indent,eol,start
set clipboard+=unnamed

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
autocmd BufNewFile *.py 0r ~/.vim/template/template.py
autocmd BufNewFile *.htm 0r ~/.vim/template/template.html
autocmd BufNewFile *.html 0r ~/.vim/template/template.html
"" http://qiita.com/katton/items/bc9720826120f5f61fc1
autocmd BufWritePre * let c = getcurpos() | :%s/\s\+$//ge | call setpos('.', c) | unlet c

runtime macros/matchit.vim

if $VIRTUAL_ENV != ''
  let b:python_lib_dir = $VIRTUAL_ENV.'/lib/'
  let b:python_ver = matchlist(systemlist('ls '.b:python_lib_dir), '^python\(\d\)\.\d$')
  let b:python_site_packages_dir = b:python_lib_dir.b:python_ver[0].'/site-packages'
  if b:python_ver[1] == '2'
    let g:jedi#force_py_version = 2
    py import vim; sys.path.insert(0, vim.eval('b:python_site_packages_dir'))
  else
    let g:jedi#force_py_version = 3
    py3 import vim; sys.path.insert(0, vim.eval('b:python_site_packages_dir'))
  endif
endif

" NeoBundle setting
call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  NeoBundleLazy 'davidhalter/jedi-vim', {
        \ 'on_ft' : ['python']
        \ }
  NeoBundle 'fatih/vim-go'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

set shell=/usr/local/bin/zsh
hi Comment ctermfg=lightblue
