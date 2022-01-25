call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

call plug#end()


" Save file as sudo on files that require root permission
	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"set enconding=utf-8


"colorscheme catppuccin


"standard settings:
set nocompatible
" Enable OS clipboard integration
set clipboard+=unnamedplus
" Enable syntax highlighting
syntax on
set encoding=utf-8

