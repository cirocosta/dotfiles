execute pathogen#infect()

syntax on
set background=light
colorscheme solarized

filetype plugin on
filetype indent on


let mapleader = ","
let g:mapleader = ","

if has('mouse')
    set mouse=a
endif


" don't forget to 'mkdir -p' this directory
" otherwise it won't work
set undodir=~/.vim_runtime/temp_dirs/undodir
set undofile

set foldcolumn=1
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
set linebreak
set si
set completeopt-=preview
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


vnoremap <C-C> "+yy
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
