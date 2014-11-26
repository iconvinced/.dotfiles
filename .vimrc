set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jnwhiteh/vim-golang'
Plugin 'vim-scripts/python.vim'
Plugin 'majutsushi/tagbar'
call vundle#end()
filetype plugin indent on

syntax on
colorscheme ron

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

" highlight extra white space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" shortcut to move between buffered files
map <C-l> :bn <CR>
map <C-h> :bp <CR>

" statusline
set laststatus=2
set statusline=[%l/%L]\ %F\ %m\ %=\ [%{&fenc==\"\"?&enc:&fenc}]\ [%{&ff}]

" for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = { 'dir': '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links' }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" for NerdTree
map <F2> :NERDTreeToggle <CR>

" for tagbar
nmap <F8> :TagbarToggle<CR>
