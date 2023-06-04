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

set inccommand=split

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
    " call minpac#add('Yggdroot/indentLine')
    call minpac#add('lukas-reineke/indent-blankline.nvim')
    call minpac#add('nvim-treesitter/nvim-treesitter')

    call minpac#add('preservim/nerdcommenter')
    call minpac#add('preservim/nerdtree')

    call minpac#add('ap/vim-css-color')

    call minpac#add('mhinz/vim-signify')

    call minpac#add('tpope/vim-repeat')
    call minpac#add('tpope/vim-surround')
    call minpac#add('tpope/vim-endwise')
    call minpac#add('tpope/vim-fugitive')

    call minpac#add('rbong/vim-flog')

    call minpac#add('nvim-lua/plenary.nvim')
    call minpac#add('nvim-telescope/telescope.nvim')

    call minpac#add('machakann/vim-highlightedyank')
    call minpac#add('machakann/vim-sandwich')

    call minpac#add('chrisbra/unicode.vim')

    call minpac#add('junegunn/fzf')
    call minpac#add('junegunn/fzf.vim')
    call minpac#add('junegunn/vim-easy-align')

    call minpac#add('AndrewRadev/splitjoin.vim')

    call minpac#add('simnalamburt/vim-mundo')

    " call minpac#add('vimwiki/vimwiki')
    call minpac#add('lervag/wiki.vim')
    call minpac#add('lervag/lists.vim')

    " call minpac#add('alok/notational-fzf-vim')

    " call minpac#add('reasonml-editor/vim-reason-plus')
    call minpac#add('sodaplayer/vim-reason-plus', {'branch': 'patch-1'})

    " call minpac#add('jpalardy/vim-slime')
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

    " ATS
    call minpac#add('vmchale/ats-format')
    call minpac#add('vmchale/ats-vim')

    " Go
    call minpac#add('fatih/vim-go')
    " , { 'do', ':GoUpdateBinaries' })

    " Jupyter
    " call minpac#add('jupyter-vim/jupyter-vim')

    " CSS
    call minpac#add('stephenway/postcss.vim')

    " CSV
    call minpac#add('chrisbra/csv.vim')

    " JavaScript/TypeScript
     "call minpac#add('leafgarland/typescript-vim')
    " call minpac#add('pangloss/vim-javascript')
    call minpac#add('HerringtonDarkholme/yats.vim')
    " call minpac#add('peitalin/vim-jsx-typescript')

    " LaTeX
    " call minpac#add('lervag/vimtex')

    " LDPL
    call minpac#add('araml/ldpl.vim')

    " Ledger
    call minpac#add('ledger/vim-ledger')

    " Arduino
    call minpac#add('stevearc/vim-arduino')

    " SCAD
    call minpac#add('sirtaj/vim-openscad')

    "YAML
    call minpac#add('stephpy/vim-yaml')

    "Rust
    call minpac#add('rust-lang/rust.vim')

    " Dockerfile
    call minpac#add('ekalinin/Dockerfile.vim')

    " Ansible
    call minpac#add('pearofducks/ansible-vim')

    " HCL

    " GLSL
    call minpac#add('tikhomirov/vim-glsl')

    " MediaWiki
    call minpac#add('m-pilia/vim-mediawiki')

    " Lisps Janet Scheme Fennel
    call minpac#add('Olical/conjure')
    call minpac#add('Olical/aniseed')
    " call minpac#add('eraserhd/parinfer-rust')
    call minpac#add('gpanders/nvim-parinfer')

    call minpac#add('janet-lang/janet.vim')

    call minpac#add('Shougo/deoplete.nvim')

    if (executable('npm'))
        " call minpac#add('neoclide/coc.nvim', {'do': './install.sh', 'branch': 'release'})
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

nnoremap <Leader>ff <cmd>Telescope find_files<cr>
nnoremap <Leader>fg <cmd>Telescope live_grep<cr>
nnoremap <Leader>fb <cmd>Telescope buffers<cr>
nnoremap <Leader>fh <cmd>Telescope help_tags<cr>

xmap gA <Plug>(EasyAlign)
nmap gA <Plug>(EasyAlign)

" nmap <M-CR> <Plug>(coc-codeaction)
"
" nmap <Leader>ff <Plug>(coc-format-selected)
" vmap <Leader>ff <Plug>(coc-format-selected)
"
" nmap <Leader>fr <Plug>(coc-rename)
" vmap <Leader>fr <Plug>(coc-rename)
"
" nmap <Leader>fc <Plug>(coc-fix-current)
" vmap <Leader>fc <Plug>(coc-fix-current)

nmap <Leader>wp :Files ~/docs/wiki<CR>

nmap <Leader>p :Files<CR>

nmap <Leader>kx :Trim<CR>

nmap <Leader>u :MundoToggle<CR>
" }}}

" Plugin Settings: {{{
let g:NERDTreeDirArrowCollapsible = '~'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeIgnore = ['\.bs.js$', '\~$', 'node_modules[[dir]]']

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

let g:deoplete#enable_at_startup = 1

let g:sexp_enable_insert_mode_mappings = 0

let g:slime_target = "tmux"

let g:vimwiki_list = [{'path': '~/docs/wiki/'}]

" wiki.vim:
let g:wiki_root = '~/docs/wiki/'

let g:nv_search_paths = ['~/docs/wiki']

let g:vimtex_compiler_latexmk = { 'options' : [ '-pdf', '-pdflatex="pdflatex --shell-escape %O %S"', '-verbose', '-file-line-error', '-synctex=1', '-interaction=nonstopmode',  ] }

let g:indentLine_char_list = ['│', '╎', '┆', '┊']
let g:indentLine_concealcursor=""

let g:indent_blankline_use_treesitter = v:true

let g:highlightedyank_highlight_duration = 100

let g:conjure#client#scheme#stdio#command = "petite"
let g:conjure#client#scheme#stdio#prompt_pattern = "> $?"

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


" From https://vim.fandom.com/wiki/Convert_between_hex_and_decimal
command! -nargs=? -range Dec2hex call s:Dec2hex(<line1>, <line2>, '<args>')
function! s:Dec2hex(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V\<\d\+\>/\=printf("0x%02x",submatch(0)+0)/g'
    else
      let cmd = 's/\<\d\+\>/\=printf("0x%02x",submatch(0)+0)/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No decimal number found'
    endtry
  else
    echo printf('%x', a:arg + 0)
  endif
endfunction

command! -nargs=? -range Hex2dec call s:Hex2dec(<line1>, <line2>, '<args>')
function! s:Hex2dec(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V0x\x\+/\=submatch(0)+0/g'
    else
      let cmd = 's/0x\x\+/\=submatch(0)+0/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No hex number starting "0x" found'
    endtry
  else
    echo (a:arg =~? '^0x') ? a:arg + 0 : ('0x'.a:arg) + 0
  endif
endfunction
