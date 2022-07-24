syntax on

" line numbers
set number
set relativenumber

" tab & indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

" backup settings
set backupdir=/tmp
set directory=~/.config/nvim/tmp
set backup

" persistent undo between opening and closing
set undofile

" search
set nohlsearch
set incsearch
set ignorecase
set smartcase

" stop auto comment in new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" split settings
set splitbelow
set splitright

set hidden
set scrolloff=10
set encoding=utf8
"set colorcolumn=80
"set signcolumn=yes 
"set guicursor=

" keybindings

" leader key
let mapleader=" "

" open terminal
nnoremap <leader>t :term<CR>

" shortcuts split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
