set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab

" Plugin Management: {{{
if exists('*minpac#init')
    call minpac#init({'dir': stdpath('data') . '/site'})

    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('morhetz/gruvbox')
    call minpac#add('junegunn/rainbow_parentheses.vim')

    call minpac#add('scrooloose/nerdcommenter')
    call minpac#add('scrooloose/nerdtree')
endif
" }}}

" Colors: {{{
try
    colorscheme gruvbox
    let g:gruvbox_italic = '1'
    let g:gruvbox_contrast_light = 'hard'
    let g:gruvbox_contrast_dark = 'hard'
    set termguicolors 
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme pablo
    echo 'Gruvbox not installed'
endtry
" }}}

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
command! PackLoad packadd minpac
