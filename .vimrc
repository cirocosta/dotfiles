execute pathogen#infect()

syntax on
set background=dark
colorscheme solarized

filetype plugin on
filetype indent on


let mapleader = ","
let g:mapleader = ","

if has('mouse')
	set mouse=a
endif


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
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap

vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

map 0 ^

source ~/.vim/plugins.vim
