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

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin  'gmarik/Vundle.vim'
Plugin  'bling/vim-airline'
Plugin  'tpope/vim-fugitive'
Plugin  'tpope/vim-fireplace'
Plugin  'tpope/vim-surround'
Plugin  'L9'
Plugin  'vim-scripts/FuzzyFinder'
Plugin  'guns/vim-clojure-static'
Plugin  'pangloss/vim-javascript'
Plugin  'mxw/vim-jsx'
call vundle#end()

syntax on
filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:jsx_ext_required = 0

:map <tab> :FufFile<CR>
