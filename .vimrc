set nocompatible
" plugins
call plug#begin()
Plug 'tpope/vim-sensible'
" status bar
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" general programming
Plug 'sheerun/vim-polyglot'
" javscript/react
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" linting
Plug 'w0rp/ale'
" async autocommand
Plug 'skywind3000/asyncrun.vim'
call plug#end()

" themes
colorscheme monokai
let g:airline_theme='powerlineish'

" airline config
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_symbols_ascii = 1
let g:bufferline_echo = 0
set noshowmode

" fix background color
set t_ut=

" show line numbers
set number

" show matching parens
set showmatch

" Set utf8 as standard encoding
set encoding=utf8

" Indent using two spaces.
set tabstop=2
set shiftwidth=2
set expandtab

" Use Unix as the standard file type
set ffs=unix,dos,mac

" reset swap dir
set directory=/tmp

" disable backup
set nobackup
set nowb

" short-cut
nnoremap ; :

" better autoread
au FocusGained,BufEnter * :checktime

" mouse mode
set mouse=a

" MUST COME LAST
" Read project .vimrc files
set exrc
" Only if they are owned by me
set secure
