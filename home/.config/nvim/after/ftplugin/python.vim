if exists('b:did_ftplugin_after_python')
    finish
endif
let b:did_ftplugin_after_python=1

setlocal omnifunc=python3complete#Complete
setlocal keywordprg=pydoc3
setlocal expandtab

" Ref: https://vim-jp.org/vimdoc-ja/indent.html#ft-python-indent
let g:pyindent_open_paren = 'shiftwidth()'
