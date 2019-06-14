set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab

packadd minpac
if !exists('*minpac#init')
    echo 'minpac not installed'
    colorscheme pablo " Okay default
else
    call minpac#init({'dir': stdpath('data') . '/site'})

    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('morhetz/gruvbox')

    packloadall

    let g:gruvbox_italic = '1'
    let g:gruvbox_contrast_light = 'hard'
    let g:gruvbox_contrast_dark = 'hard'
    set termguicolors 
    colorscheme gruvbox
endif

