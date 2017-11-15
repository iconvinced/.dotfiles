set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'ciaranm/detectindent'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

syntax on

set encoding=utf-8
set number
set cindent
set hlsearch
set incsearch
set ignorecase
set backspace=2
set background=dark
set tags=tags;
set nofixendofline

" open vim at the location that was last edited
if has("autocmd")
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" highlight extra white space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" shortcut to move between buffered files
nnoremap <C-h> :bp! <CR>
nnoremap <C-l> :bn! <CR>

" statusline
set laststatus=0

" for ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = { 'dir': '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links' }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" for NerdTree
map <F2> :NERDTreeToggle <CR>

" for tagbar
map <F8> :TagbarToggle<CR>

" for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#whitespace#mixed_indent_algo = 2

" for detectindent
if has("autocmd")
    autocmd BufReadPost * :DetectIndent
endif
let g:detectindent_preferred_expandtab = 1
let g:detectindent_preferred_indent = 4
