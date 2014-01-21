set encoding=UTF-8
set fileencodings=UTF-8
set termencoding=utf-8 
autocmd FileType cpp colorscheme desert
"set fileencoding=utf-8

"filetype on
"call pathogen#runtime_append_all_bundles()
call pathogen#incubate()
call pathogen#helptags()


set nu 
syn on
set t_Co=256


set t_Co=256
set laststatus=2  " Always show the statusline


"原來 omicpp 是差下面這二項丫
" 這樣 , 我只要 按個. 就會跑出後面要的東西了很方便
set nocp
filetype plugin on  
let NERDTree = 1
"let NERDTreeQuitOnOpen = 0  
let NERDChristmasTree= 1
let NERDTreeWinPos = "right"   " it works , but above is not 
"let Tlist_Auto_Open = 1
"nnoremap <silent> <f6> :TlistOpen<cr>   
" when u in the NERDTree tab , just press 'q' t quit 
nnoremap <silent> <f5> :NERDTree<cr>     
"}

let Tlist_Auto_Open = 1                   
let Tlist_Exit_OnlyWindow = 1            
let Tlist_Ctags_Cmd='/usr/bin/ctags' 

"set showcmd
"set autoindent 
let tabstop =  4
let shiftwidth = 4 
"run macros/gdb_mappings.vim
"


map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 

" 可以哎  , 這樣的意思是說  , 只有在 偵測到 
" 擋按  類形是  python 才會做下面這樣的設定
autocmd filetype python set paste
" 但有個地方很怪  , 那就是  我直接設定 set paste
" 會把我  ab for for(){<CR> 這個給蓋掉哎  
" 就不會出現了 
autocmd BufNewFile,BufRead *.py set  tabstop=4 shiftwidth=4 
set cursorline

let g:vimgdb_debug_file =""
run bundle/vimgdb_runtime/macros/gdb_mappings.vim
map <F2> :run ~/.vim/bundle/vimgdb_runtime/macros/gdb_mappings.vim<CR>
syntax on

" supertab
let g:SuperTabDefaultCompletionType="context"
