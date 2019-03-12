if &compatible
  set nocompatible
endif

" Plugins:
" =======

" Required:
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Dein Niceties:
  call dein#add('haya14busa/dein-command.vim')
  call dein#add('wsdjeg/dein-ui.vim')

  "  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })


  " Colors:
  call dein#add('sheerun/vim-wombat-scheme')
  call dein#add('morhetz/gruvbox')


  " General:
  " --------

  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/nerdtree')

  "call dein#add('vim-airline/vim-airline')
  call dein#add('itchyny/lightline.vim')

  call dein#add('airblade/vim-gitgutter')

  set noshowmode
  set cmdheight=2
  let g:echodoc_enable_at_startup = 1
  call dein#add('Shougo/echodoc')

  " Prose Writing:
  call dein#add('junegunn/goyo.vim')

  " Completion:
  
  call dein#add('Shougo/denite.nvim')
 
  "let g:deoplete#enable_at_startup = 1
  " call dein#add('Shougo/deoplete.nvim')

  call dein#add('neoclide/coc.nvim', {
              \ 'build': 'yarn install'
              \ })


  " call dein#add('ervandew/supertab')

  " Compilation:
  " call dein#add('tpope/vim-dispatch')

  " Linting: 
  " let g:ale_reason_ols_executable = '/bin/reason-language-server'
  " let g:ale_reason_ols_use_global = '1'
  " let g:ale_reasonml_refmt_executable = '/home/john/.node_modules/bin/refmt'
  " let g:ale_lint_on_text_changed = 'never'
  " call dein#add('w0rp/ale')


  " Tags:
  call dein#add('majutsushi/tagbar')

  " Utilities:
  " call dein#add('junegunn/fzf')
  " call dein#add('junegunn/fzf.vim')
  call dein#add('cloudhead/neovim-fuzzy')
  call dein#add('godlygeek/tabular')
  call dein#add('tpope/vim-surround')

  " Languages:
  " ----------

  " Language Client
  " let g:LanguageClient_serverCommands = {
  "             \ 'reason': ['/bin/reason-language-server']
  "             " \ 'ocaml': ['/home/john/.node_modules/bin/ocaml-language-server']
  "             \ }

  " call dein#add('autozimu/LanguageClient-neovim', {
  "             \ 'rev': 'next',
  "             \ 'build': 'bash install.sh',
  "             \ })
  " call dein#add('sheerun/vim-polyglot')
  call dein#add('Shougo/neco-syntax')

  " C:
  call dein#add('Shougo/neoinclude.vim')
  " call dein#add('tweekmonster/deoplete-clang2')

  " Go:
  call dein#add('fatih/vim-go')

  " Latex:
  call dein#add('lervag/vimtex')

  let g:vimtex_view_general_viewer = 'evince'

  " JSONC:
  call dein#add('neoclide/jsonc.vim')

  " Javascript:
  call dein#add('ternjs/tern')

  let g:tern_request_timeout = 1
  let g:tern_show_signature_in_pum = '0'

  " Java:
  call dein#add('artur-shaik/vim-javacomplete2')

  autocmd FileType java setlocal omnifunc=javacomplete#Complete

  let g:JavaComplete_LibsPath = '~/class/security/ex1/bobw/libs/'

  " CSS:
  call dein#add('chrisbra/Colorizer')

  " HTML5:
  call dein#add('othree/html5.vim')

  " Rust:
  call dein#add('rust-lang/rust.vim')
  " call dein#add('sebastianmarkow/deoplete-rust')

  " let g:deoplete#sources#rust#racer_binary='which racer'
  " let g:deoplete#sources#rust#rust_source_path='/usr/src/rust/'
  " let g:deoplete#sources#rust#disable_keymap=0
  " let g:deoplete#sources#rust#documentation_max_height=20

  " Ledger:
  call dein#add('ledger/vim-ledger')

  " Haxe:
  call dein#add('jdonaldson/vaxe')

  " OCaml Reason:
  call dein#add('reasonml-editor/vim-reason-plus')
  " call dein#add('jordwalke/vim-reasonml')

  " Python:
  " call dein#add('zchee/deoplete-jedi')
  call dein#add('davidhalter/jedi-vim')

  let g:python3_host_prog = '/home/john/.virtualenvs/neovim/bin/python'

  " Save:
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
set omnifunc=syntaxcomplete#Complete

"colorscheme wombat

let g:gruvbox_contrast_light = 'hard'
let g:gruvbox_contrast_dark = 'hard'

set background=dark
set termguicolors "urxvt lacks 24-bit color.
colorscheme gruvbox

set colorcolumn=81

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif


" Editor: 
set ignorecase
set smartcase
set visualbell
set number
set ruler
set shortmess=atI
set cursorline
set mouse=a
set nojoinspaces

set listchars=eol:$,tab:t-,trail:~,precedes:<,extends:>

set display+=lastline

set completeopt=longest,menuone

" Formatting:
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab


" 
"autocmd CursorHold * silent call CocActionAsync('showSignatureHelp')
autocmd CursorHoldI, CursorMovedI * call CocAction('showSignatureHelp')


" Hotkeys:

noremap <Leader><Tab> :NERDTreeToggle<CR>
noremap <Leader>] :TagbarToggle<CR>


noremap <Leader>f :FuzzyOpen<CR>

" noremap <Leader>g :Goyo<CR>

nmap <silent> <Leader>gd <Plug>(coc-definition)
nmap <silent> <Leader>gt <Plug>(coc-type-definition)
nmap <silent> <Leader>ge <Plug>(coc-diagnostic-info)

vmap <silent> <Leader>gf <Plug>(coc-format-selected)
nmap <silent> <Leader>gf <Plug>(coc-format-selected)

nmap <Leader>gd :call CocAction('showSignatureHelp')<CR>

noremap <Leader>ls :VimtexCompileSS<CR>


noremap <Leader>x :CocList<CR>

inoremap <silent> <expr> <C-space> pumvisible() ? "\<Down>" :
			\ coc#refresh()

" noremap <A-CR> :call LanguageClient_contextMenu()<CR>
" inoremap <A-CR> <Esc>:call LanguageClient_contextMenu()<CR>

"Automatic Closing Braces
inoremap {<CR> {<CR>}<Esc>O
inoremap {} {}


" Lightline:
let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ 'active': {
            \   'left':[ [ 'mode', 'paste' ],
            \            [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component': {
            \   'readonly': '%{&readonly?"RO":""}',
            \ },
            \ 'component_function': {
            \   'cocstatus': 'coc#status'
            \ },
            \ 'separator': { 'left': '', 'right': '' },
            \ 'subseparator': { 'left': '>', 'right': '<' }
            \ }


