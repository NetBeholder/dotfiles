local options = {

    encoding = "utf8",
    cursorline = true,
--    backspace = 2,
    showcmd = true,
    number = true,
    laststatus = 2,
    autoread = true,
    autowrite = true,
    tabstop = 2,
    shiftwidth = 2,
    shiftround = true,
    expandtab = true,
    relativenumber = true
    
}

for k,v in pairs(options) do
	vim.opt[k] = v
end
-- Some standard basic settings:
-- color scheme: gruvbox-material
--vim.cmd("colorscheme gruvbox-material")
-- Enable OS clipboard integration
vim.cmd("set clipboard+=unnamedplus")
-- Enable syntax highlighting
--vim.cmd("syntax on")
-- UTF-8
--vim.cmd("set encoding=utf-8")
-- Enable relative line numbering
--vim.cmd("set number relativenumber")

--vim.cmd("let g:rehash256 = 1")
vim.cmd([[
	set nocompatible
	set termguicolors
	syntax on
]])

vim.g.rehash256 = 1

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
