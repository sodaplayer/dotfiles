"Indentation"
setlocal tabstop=8
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal nosmartindent

"Completion
setlocal omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal completeopt-=preview
