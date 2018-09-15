" plugins
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" javscript/react
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
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

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" reset swap dir
set directory=/tmp

" disable backup
set nobackup
set nowb

" short-cut
nnoremap ; :

" mouse mode
set mouse=a

