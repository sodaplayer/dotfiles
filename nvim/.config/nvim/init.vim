set autoindent
set softtabstop=4
set shiftwidth=4
set expandtab
set nojoinspaces

set number
set visualbell

set ignorecase
set smartcase

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
    call minpac#add('ntpeters/vim-better-whitespace')
    call minpac#add('Yggdroot/indentLine')

    call minpac#add('preservim/nerdcommenter')
    call minpac#add('preservim/nerdtree')

    call minpac#add('mhinz/vim-signify')

    call minpac#add('tpope/vim-repeat')
    call minpac#add('tpope/vim-surround')
    call minpac#add('tpope/vim-endwise')

    call minpac#add('chrisbra/unicode.vim')

    call minpac#add('junegunn/fzf')
    call minpac#add('junegunn/fzf.vim')

    call minpac#add('vimwiki/vimwiki')

    call minpac#add('alok/notational-fzf-vim')

    " call minpac#add('reasonml-editor/vim-reason-plus')
    call minpac#add('sodaplayer/vim-reason-plus', {'branch': 'patch-1'})

    call minpac#add('jpalardy/vim-slime')
    call minpac#add('wlangstroth/vim-racket')

    " Plai-Typed
    " call minpac#add('johnfresco/vim-plai-typed')

    " Clojure
    call minpac#add('tpope/vim-salve')
    call minpac#add('tpope/vim-fireplace')
    call minpac#add('tpope/vim-dispatch')
    call minpac#add('tpope/vim-projectionist')
    call minpac#add('tpope/vim-sexp-mappings-for-regular-people')
    call minpac#add('guns/vim-sexp')
    call minpac#add('guns/vim-clojure-highlight')
    call minpac#add('guns/vim-clojure-static')
    call minpac#add('typedclojure/vim-typedclojure')

    "Elixir
    call minpac#add('elixir-editors/vim-elixir')

    " Go
    call minpac#add('fatih/vim-go')
    " , { 'do', ':GoUpdateBinaries' })

    " Jupyter
    " call minpac#add('jupyter-vim/jupyter-vim')

    " CSS
    call minpac#add('stephenway/postcss.vim')

    " JavaScript/TypeScript
     "call minpac#add('leafgarland/typescript-vim')
    " call minpac#add('pangloss/vim-javascript')
    call minpac#add('HerringtonDarkholme/yats.vim')
    " call minpac#add('peitalin/vim-jsx-typescript')

    " LaTeX
    call minpac#add('lervag/vimtex')

    " LDPL
    call minpac#add('araml/ldpl.vim')

    " Ledger
    call minpac#add('ledger/vim-ledger')

    " Arduino
    call minpac#add('stevearc/vim-arduino')

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
let maplocalleader = "\<space>"

inoremap <silent><expr> <c-space> coc#refresh()

noremap <Leader><Tab> :NERDTreeToggle<CR>

noremap <Leader>ev :vsplit $MYVIMRC<CR>
noremap <Leader>sv :source $MYVIMRC<CR>

nmap <silent> <Leader>er :RainbowParentheses!!<CR>

nmap <M-CR> <Plug>(coc-codeaction)

nmap <Leader>ff <Plug>(coc-format-selected)
vmap <Leader>ff <Plug>(coc-format-selected)

nmap <Leader>fr <Plug>(coc-rename)
vmap <Leader>fr <Plug>(coc-rename)

nmap <Leader>fc <Plug>(coc-fix-current)
vmap <Leader>fc <Plug>(coc-fix-current)

nmap <Leader>wp :Files ~/docs/wiki<CR>

nmap <Leader>p :Files<CR>

nmap <Leader>kx :Trim<CR>
" }}}

" Plugin Settings: {{{
let g:NERDTreeDirArrowCollapsible = '~'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeIgnore = ['\.bs.js$', '\~$', 'node_modules[[dir]]']

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1


let g:sexp_enable_insert_mode_mappings = 0

let g:slime_target = "tmux"

let g:vimwiki_list = [{'path': '~/docs/wiki/'}]

let g:nv_search_paths = ['~/docs/wiki']

let g:vimtex_compiler_latexmk = { 'options' : [ '-pdf', '-pdflatex="pdflatex --shell-escape %O %S"', '-verbose', '-file-line-error', '-synctex=1', '-interaction=nonstopmode',  ] }

let g:indentLine_char_list = ['│', '╎', '┆', '┊']
let g:indentLine_concealcursor=""

" }}}


" Commands: {{{
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
command! PackLoad   packadd minpac

command! CDC cd %:p:h

command! Today pu=strftime('%F')

command! Trim %s/\s\+$//e
" }}}
