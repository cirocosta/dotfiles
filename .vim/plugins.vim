let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

let g:ctrlp_map = '<c-f>'
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>

let g:user_emmet_install_global = 0
autocmd FileType html,css,soy EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

let g:glsl_file_extensions = '*.glsl,*.frag,*.vert'

autocmd BufNewFile,BufRead *.ctmpl   set syntax=gotmpl

let g:ycm_confirm_extra_conf = 0
