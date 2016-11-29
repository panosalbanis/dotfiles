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

autocmd BufWritePre * %s/\s\+$//e

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
Plugin  'vim-scripts/Align'
Plugin  'vim-scripts/SQLUtilities'

call vundle#end()

syntax on
filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:jsx_ext_required = 0

" FuzzyFinder
" -----------------------------------------------------------------------------
function! FufSetIgnore()

    let ignorefiles = [ $HOME . "/.gitignore", ".gitignore" ]
    let exclude_vcs = '\.(hg|git|bzr|svn|cvs)'
    let ignore = '\v\~$'

    for ignorefile in ignorefiles

        if filereadable(ignorefile)
            for line in readfile(ignorefile)
                if match(line, '^\s*$') == -1 && match(line, '^#') == -1
                    let line = substitute(line, '^/', '', '')
                    let line = substitute(line, '\.', '\\.', 'g')
                    let line = substitute(line, '\*', '.*', 'g')
                    let ignore .= '|^' . line
                endif
            endfor
        endif

        let ignore .= '|^' . exclude_vcs
        let g:fuf_coveragefile_exclude = ignore
        let g:fuf_file_exclude = ignore
        let g:fuf_dir_exclude = ignore

    endfor
endfunction

:map <Tab>   :call FufSetIgnore() <BAR> :FufFile<CR>
