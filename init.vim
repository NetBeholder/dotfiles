"First install plugin manager https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'tpope/vim-surround'
call plug#end()

"Some tandard basic settings:
set nocompatible
" Enable OS clipboard integration
set clipboard+=unnamedplus
" Enable syntax highlighting
syntax on
set encoding=utf-8
" Enable relative line numbering
set number relativenumber
"set mouse=a



" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"colorscheme catppuccin
colorscheme molokai
let g:rehash256 = 1
set background=dark
"let g:molokai_original = 1

"### Airline settings ###
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
