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
 
highlight comment ctermfg=green
highlight search ctermbg=gray
highlight Pmenu ctermfg=white
highlight PmenuSel ctermfg=white ctermbg=green

" open vim at the location that was last edited
if has("autocmd")
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
hi StatusLine ctermfg=000 ctermbg=255
set laststatus=2
set statusline=[%l/%L]\ %F\ %m\ %=\ [%{&fenc==\"\"?&enc:&fenc}]
