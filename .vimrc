execute pathogen#infect()

syntax on
set background=light
set clipboard=unnamed
colorscheme solarized

filetype plugin on
filetype indent on

let mapleader = ","
let g:mapleader = ","

if has('mouse')
    set mouse=a
endif

if has("gui_running")
  set background=dark
  set guifont=Inconsolata:h16
  set guioptions-=r
  set guioptions-=L
endif

set undodir=~/.vim_runtime/temp_dirs/undodir
set undofile

set linebreak
set noerrorbells
set novisualbell
set history=700
set autoread
set so=7
set ruler
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set ai
set si
set wrap
set completeopt-=preview
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[


map 0 ^
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>pp :setlocal paste!<cr>
map <leader>bd :Bclose<cr>
map <leader>ba :1,1000 bd!<cr>


source ~/.vim/plugins.vim
source ~/.vim/helpers.vim


" mapping to make movements operate on 1 screen line in wrap mode
function! ScreenMovement(movement)
   if &wrap
      return "g" . a:movement
   else
      return a:movement
   endif
endfunction
onoremap <silent> <expr> j ScreenMovement("j")
onoremap <silent> <expr> k ScreenMovement("k")
onoremap <silent> <expr> 0 ScreenMovement("0")
onoremap <silent> <expr> ^ ScreenMovement("^")
onoremap <silent> <expr> $ ScreenMovement("$")
nnoremap <silent> <expr> j ScreenMovement("j")
nnoremap <silent> <expr> k ScreenMovement("k")
nnoremap <silent> <expr> 0 ScreenMovement("0")
nnoremap <silent> <expr> ^ ScreenMovement("^")
nnoremap <silent> <expr> $ ScreenMovement("$")

