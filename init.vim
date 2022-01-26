"First install plugin manager https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

call plug#end()


"set enconding=utf-8



"Some tandard basic settings:
set nocompatible
" Enable OS clipboard integration
set clipboard+=unnamedplus
" Enable syntax highlighting
syntax on
set encoding=utf-8
" Enable relative line numbering
set number relativenumber




" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

colorscheme catppuccin
let g:airline_theme='badwolf'
