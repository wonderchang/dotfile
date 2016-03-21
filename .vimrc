nnoremap <F12> :TlistToggle<CR>
" Piaip's setup

syntax on
set expandtab
set smarttab
set nocompatible
set nowrap
set wildmenu
set backupdir=~/tmp,.,/var/tmp/vi,/tmp
set directory=~/tmp,/var/tmp/vi,/tmp,.
set nobackup		" keep a backup file
"set textwidth=78
set tabstop=2
set shiftwidth=2
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
set showmatch
set clipboard=unnamed

"set background=dark	" another is 'light'

" VIM 6.0, We're using VIM on ntucs? Solaris, my own build
if version >= 600
	set nohlsearch
	" set foldcolumn=2
	" set foldmethod=syntax
	set foldmethod=marker
	set foldlevel=1
	"    set foldtext=/^/=>
	set encoding=utf-8
	set fileencodings=big5,utf-8,ucs-bom,latin1
	set termencoding=utf-8
else
	set fileencoding=taiwan
endif
au BufNewFile,BufRead *.less set filetype=less
let Tlist_Sort_Type = "order"
let Tlist_WinWidth = 30
let Tlist_Inc_Winwidth = 0
"let Tlist_Use_Right_Window = 1
runtime taglist.vim

"set winminheight=0
"set winminwidth=0
"runtime bufexplorer.vim

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

" IDE
"nnoremap <silent> <F5>	:cwindow<CR>
"nnoremap <silent> <F6>	:make<CR>
"nnoremap <silent> <F7>	:TlistUpdate<CR>
"nnoremap <silent> <F8>	:Tlist<CR>
"nnoremap <silent> <F9>	:edit .<CR>
"nnoremap <silent> <F10>	:BufExplorer<CR>


set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 
set termencoding=utf-8 
set encoding=utf-8

execute pathogen#infect()
call pathogen#infect()
syntax on
filetype plugin indent on
set t_Co=16
hi Comment ctermfg=blue

" vi:sw=4:ts=4
