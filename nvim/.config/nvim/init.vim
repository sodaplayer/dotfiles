set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab
set nojoinspaces

set number
set visualbell

set ignorecase

set ruler
set colorcolumn=81

set mouse=a
set cursorline

set listchars=eol:$,tab:t-,trail:~,precedes:<,extends:>

if executable('rg')
    let &grepprg = "rg --vimgrep"
endif

" Plugin Management: {{{
if exists('*minpac#init')
    call minpac#init({'dir': stdpath('data') . '/site'})

    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('morhetz/gruvbox')
    call minpac#add('junegunn/rainbow_parentheses.vim')

    call minpac#add('scrooloose/nerdcommenter')
    call minpac#add('scrooloose/nerdtree')

    call minpac#add('junegunn/fzf')

    if (executable('npm'))
        call minpac#add('neoclide/coc.nvim', {'do': './install.sh', 'branch': 'release'})
    endif

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

" Hotkeys: {{{
noremap <Leader><Tab> :NERDTreeToggle<CR>

noremap <Leader>ev :vsplit $MYVIMRC<CR>
noremap <Leader>sv :source $MYVIMRC<CR>
" }}}

" Plugin Settings: {{{
let g:NERDTreeDirArrowCollapsible = '~'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeIgnore = ['\.bs.js$', '\~$']
" }}}


" Commands: {{{
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
command! PackLoad   packadd minpac

command! CDC cd %:p:h
" }}}
