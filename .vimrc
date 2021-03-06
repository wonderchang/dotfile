" Tab and indent
set modelines=5
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set backspace=2
set autoindent
set nowrap
set list listchars=tab:▸·,trail:⎵

" Command mode command completion
set wildmenu                 " Enhanced command line completion.
set wildmode=list:longest    " Complete files like a shell.

" Temporary file location
set nobackup                 " Don't keep a backup file
set backupdir=~/tmp,.,/var/tmp/vi,/tmp
set directory=~/tmp,/var/tmp/vi,/tmp,.

" Encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 
set termencoding=utf-8 
set encoding=utf-8

" Color
set t_Co=256

" Others
set nocompatible             " Use Vim default instead of Vi
set viminfo='20,\"50
if $TMUX == ''
  set clipboard+=unnamed
endif
" set clipboard=unnamed
set nohlsearch
set foldmethod=marker
set foldlevel=1

" Customized shortcut: Window
nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <C-H> :wincmd h<CR>
nnoremap <silent> <C-J> :wincmd j<CR>
nnoremap <silent> <C-K> :wincmd k<CR>
nnoremap <silent> <C-L> :wincmd l<CR>
nnoremap <silent> +     :wincmd +<CR>
nnoremap <silent> -     :wincmd -<CR>
nnoremap <silent> <     :wincmd <<CR>
nnoremap <silent> >     :wincmd ><CR>

" Line wrapping
set linebreak
set breakindent
set breakindentopt=shift:2
nmap k gk
nmap j gj

syntax on
filetype plugin indent on

" Apply a syntax setting in specified file extension
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Customized the highlight item
hi Comment ctermfg=blue

" Customized the tab setting of the specific filetype
autocmd Filetype python setlocal ts=4 sts=4 sw=4 colorcolumn=80

" Vim plugin registry managed by vim-plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'https://github.com/elzr/vim-json.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gkz/vim-ls'
Plug 'digitaltoad/vim-pug'
Plug 'wavded/vim-stylus'
Plug 'isRuslan/vim-es6'
Plug 'mxw/vim-jsx'
Plug 'nikvdp/ejs-syntax'
call plug#end()

" vi:sw=2:ts=2
