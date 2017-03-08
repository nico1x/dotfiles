set t_Co=256
syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu
set nowrap
set smartindent
set autoindent
set cursorline
set colorcolumn=80
set splitright

"molokai
let g:rehash256 = 1
colorscheme molokai

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'zhaocai/goldenview.vim'
Plug 'andviro/flake8-vim'
Plug 'w0rp/ale'
call plug#end()

"NERDTree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Flake8
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8'
let g:PyFlakeAggressive = 0
let g:PyFlakeDisabledMessages = 'E127'
