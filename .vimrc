set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
" Plugin 'klen/python-mode'
" Plugin 'rosenfeld/conque-term'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'davidhalter/jedi-vim'
Plugin 'Vimjas/vim-python-pep8-indent'
" Plugin 'mitsuhiko/vim-python-combined'
Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin indent on

syntax on
set background=dark
colorscheme solarized
let g:jedi#popup_on_dot = 0
        
set number
set incsearch
set hlsearch

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=99 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
