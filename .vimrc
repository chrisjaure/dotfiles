" This must be first, because it changes other options as side effect
set nocompatible

call pathogen#infect()

" used solarized color scheme
colorscheme solarized
if has('gui_running')
	set background=light
else
	set background=dark
endif
set t_Co=256
let g:solarized_termcolors=256

set t_ut=

" enable syntax highlighting
syntax on

" use file type plugins and indentation
filetype plugin indent on

" Show line numbers
set number

" show matching parens
set showmatch

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" tab indenting
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set copyindent

" always show status bar
set laststatus=2

" reset swap dir
set directory=/tmp
" disable backup
set nobackup
set nowb

" toggle paste mode
set pastetoggle=<F2>

" short-cut
nnoremap ; :

" hide gui elements
set guioptions-=r
set guioptions-=l
set guioptions-=T

" move line down/up with ctrl+shift+up|down
nnoremap <C-S-Down> :m+<CR>==
nnoremap <C-S-Up> :m-2<CR>==
inoremap <C-S-Down> <Esc>:m+<CR>==gi
inoremap <C-S-Up> <Esc>:m-2<CR>==gi
vnoremap <C-S-Down> :m'>+<CR>gv=gv
vnoremap <C-S-Up> :m-2<CR>gv=gv

" mouse mode
set mouse=a

" more familiar shortcuts
" source $VIMRUNTIME/mswin.vim
" behave mswin

" supertab settings
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" window switching
map <C-Tab> <C-W><C-W>
