if exists('b:did_ftplugin_python')
    finish
endif
let b:did_ftplugin_python=1

setlocal tabstop=4
setlocal shiftwidth=4
setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
