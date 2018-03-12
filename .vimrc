execute pathogen#infect()
syntax on
filetype plugin indent on

set hlsearch
set number
"set tabstop=4
"set shiftwidth=2
set backspace=indent,eol,start
"set expandtab
set ruler
colorscheme spring-night
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set wildmenu
set ignorecase
set smartcase
set autoindent
set nostartofline
set cmdheight=2
set pastetoggle=<F11>

" used for vim-airline
set laststatus=2

let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" tag nav
nmap <C-i> :CtrlPTag<CR>
nmap <C-\> :TagbarToggle<CR>
nmap <C-j> :ts<CR>

" Disable YCM
let g:loaded_youcompleteme = 1

" Autoformat mapping
nmap <C-k> :CF <CR>

if !exists("g:cf_command")
    let g:cf_command = "clang-format"
endif

func! Cf()
    execute "!" . g:cf_command . " -i *.c *.h"
    e
endfu
com! CF call Cf()

func! WordProcessorMode()
  setlocal formatoptions=1
  setlocal noexpandtab
  map j gj
  map k gk
  setlocal spell spelllang=en_us
  "set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap
  setlocal linebreak
endfu
com! WP call WordProcessorMode()
