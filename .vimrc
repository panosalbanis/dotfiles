set bs=indent,eol,start
set expandtab
set shiftwidth=2
set tabstop=2
set number
set laststatus=2
set t_Co=256
set background=dark
set nowrap
set nofoldenable
set nocompatible

imap jj <Esc>

autocmd BufWritePre * %s/\s\+$//e

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin  'gmarik/Vundle.vim'
Plugin  'bling/vim-airline'
Plugin  'tpope/vim-fugitive'
Plugin  'tpope/vim-surround'
Plugin  'L9'
Plugin  'junegunn/fzf'
Plugin  'pangloss/vim-javascript'
Plugin  'mxw/vim-jsx'
Plugin  'leshill/vim-json'

call vundle#end()

syntax on
filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:jsx_ext_required = 0

:map <Tab>   :FZF<CR>
