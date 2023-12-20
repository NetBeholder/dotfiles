-- Some standard basic settings:
vim.cmd("set nocompatible")
-- color scheme: gruvbox-material
vim.cmd("colorscheme gruvbox-material")
-- Enable OS clipboard integration
vim.cmd("set clipboard+=unnamedplus")
-- Enable syntax highlighting
vim.cmd("syntax on")
-- UTF-8
vim.cmd("set encoding=utf-8")
-- Enable relative line numbering
vim.cmd("set number relativenumber")

--vim.cmd("let g:rehash256 = 1")

vim.g.rehash256 = 1