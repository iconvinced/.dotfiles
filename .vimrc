set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/molokai'
Bundle 'kien/ctrlp.vim'
filetype plugin indent on

syntax on
colorscheme molokai

set encoding=utf-8
set number
set shiftwidth=4
set tabstop=4
set expandtab
set cindent
set hlsearch
set incsearch
set ignorecase
set backspace=2
 
" open vim at the location that was last edited
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

" statusline
set laststatus=2
set statusline=[%l/%L]\ %F\ %m\ %=\ [%{&fenc==\"\"?&enc:&fenc}]\ [%{&ff}]

" for easymotion
let g:EasyMotion_leader_key = '<C-g>'

" for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = { 'dir': '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links' }
let g:ctrlp_user_command = { 'types': { 1: ['.git', 'cd %s && git ls-files'], }, 'fallback': 'find %s -type f' }
