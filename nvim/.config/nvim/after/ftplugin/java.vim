command! StartEclim call StartEclim()

setlocal omnifunc=javacomplete#Complete

let g:JavaComplete_ClosingBrace = 1

"Some convenient binds

noremap <Leader>j :JavaCorrect<CR>
noremap <Leader>i :JCimportsAddMissing<CR>
noremap <Leader>v :Validate<CR>
