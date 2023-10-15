"First install plugin manager https://github.com/junegunn/vim-plug
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

"if has('gui_running')
"  set guifont=Terminus:h16
"endif

call plug#begin()

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'                       " Lightline statusbar
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'scrooloose/nerdtree'
Plug 'tomasr/molokai'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'lilydjwg/colorizer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
source ~/.config/nvim/plug-config/coc.vim

" for coc-vim
set nobackup
set nowritebackup
"

"Some standard basic settings:
set nocompatible
" Enable OS clipboard integration
set clipboard+=unnamedplus
" Enable syntax highlighting
syntax on
set encoding=utf-8
" Enable relative line numbering
set number relativenumber
"set mouse=a

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Save file as sudo on files that require root permission
	cabbrev w!! execute 'silent! write !doas tee % >/dev/null' <bar> edit!
" Save file as sudo on files that require root permission
"   cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" 
" Fix auto-indentation for YAML files
"f iletype plugin indent on

"colorscheme catppuccin
colorscheme gruvbox 
let g:rehash256 = 1
"set background=dark
"let g:molokai_original = 1

set cursorline
"### Airline settings ###
"let g:airline_theme='badwolf'
"let g:airline#extensions#tabline#enabled = 1

" ### Panes settings ### 
"moving beetwen panes by vim-style keys
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <M-Up> :resize -2<CR>
nnoremap <M-Down> :resize +2<CR>
map <M-Left> :vertical resize 2<CR>
nnoremap <M-Right> :vertical resize +2<CR>
" Text formatting
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.


"Other stuff

"map <C-s> :source ~/.config/nvim/init.vim<CR>

:set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END:
