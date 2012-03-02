call pathogen#infect()

syntax on
filetype plugin indent on
set number

if has('gui_running')
	set background=light
else
	set background=dark
endif
set t_Co=16
let g:solarized_termcolors=256

set nocompatible

set smartindent
set autoindent
set smarttab
set tabstop=4

"always show status bar
set laststatus=2

"hide gui elements
set guioptions-=r
set guioptions-=l
set guioptions-=T

colorscheme solarized

"move line down/up
nnoremap <A-Down> :m+<CR>==
nnoremap <A-Up> :m-2<CR>==
inoremap <A-Down> <Esc>:m+<CR>==gi
inoremap <A-Up> <Esc>:m-2<CR>==gi
vnoremap <A-Down> :m'>+<CR>gv=gv
vnoremap <A-Up> :m-2<CR>gv=gv

"reset swap dir
set directory=/tmp

"more familiar shortcuts
source $VIMRUNTIME/mswin.vim
behave mswin

"supertab settings
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

"window switching
map <C-Tab> <C-W><C-W>
