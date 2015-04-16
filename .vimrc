set bs=indent,eol,start
set expandtab
set shiftwidth=4
set tabstop=4
set number
set laststatus=2
set t_Co=256
set background=dark
set nowrap
set nofoldenable

set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/vundle.vim/
call vundle#rc()

Bundle 'gmarik/Vundle.vim'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-surround'
Bundle 'L9'
Bundle 'vim-scripts/FuzzyFinder'

filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1

:map <tab> :FufFile<CR>
