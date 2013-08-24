set encoding=utf-8
set number
set shiftwidth=4
set tabstop=4
set expandtab
set cindent
set hlsearch
set cursorline
syntax on
set incsearch
set ignorecase
 
filetype indent on
 
colorscheme torte
 
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
" execute pathogen#infect()
 
" for NERDTree
" map <F2> :NERDTreeToggle <CR>

" for airline
" set laststatus=2
" set noshowmode
" let g:bufferline_echo = 0
