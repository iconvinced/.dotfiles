syntax on
filetype indent on

set encoding=utf-8
set number
set shiftwidth=4
set tabstop=4
set expandtab
set cindent
set hlsearch
set incsearch
set ignorecase
 
if has("autocmd")
    " open vim at the location that was last edited
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

" for FreeBSD
" set backspace=2

" for pathogen
execute pathogen#infect()

" for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_working_path_mode = 0

" statusline
set laststatus=2
set statusline=[%l/%L]\ %F\ %m\ %=\ [%{&fenc==\"\"?&enc:&fenc}]\ [%{&ff}]

" molokai scheme
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
