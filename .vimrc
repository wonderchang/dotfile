syntax on
set expandtab
set smarttab
set nocompatible
set nowrap
set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi,/tmp
set directory=~/tmp,/var/tmp/vi,/tmp,.
set nobackup
set tabstop=2
set shiftwidth=2
set bs=2
set ai
set viminfo='20,\"50
set clipboard=unnamed

set nohlsearch
set foldmethod=marker
set foldlevel=1

au BufNewFile,BufRead *.less set filetype=less
let Tlist_Sort_Type = "order"
let Tlist_WinWidth = 30
let Tlist_Inc_Winwidth = 0
runtime taglist.vim

" Diff
nnoremap <silent> <C-G>	:diffget<CR>
nnoremap <silent> <C-P>	:diffput<CR>

" Window
nnoremap <silent> <Tab>	:wincmd w<CR>
nnoremap <silent> <C-H>	:wincmd h<CR>
nnoremap <silent> <C-J>	:wincmd j<CR>
nnoremap <silent> <C-K>	:wincmd k<CR>
nnoremap <silent> <C-L>	:wincmd l<CR>
nnoremap <silent> +	:wincmd +<CR>
nnoremap <silent> -	:wincmd -<CR>
nnoremap <silent> <	:wincmd <<CR>
nnoremap <silent> >	:wincmd ><CR>

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 
set termencoding=utf-8 
set encoding=utf-8

syntax on
filetype plugin indent on
set t_Co=16
hi Comment ctermfg=blue
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'https://github.com/elzr/vim-json.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/jmcantrell/vim-virtualenv.git'
call plug#end()

" vi:sw=4:ts=4
