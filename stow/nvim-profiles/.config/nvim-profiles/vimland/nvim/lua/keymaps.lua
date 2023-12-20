-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opt = {
  noremap = true,
  silent = true,
}
local map = vim.api.nvim_set_keymap


--local k = require("core.utils").keymap

--moving beetwen panes by vim-style keys <ctrl>+hjkl

map("n", "<C-j>", "<C-W>j", opt)
map("n", "<C-k>", "<C-W>k", opt)
map("n", "<C-h>", "<C-W>h", opt)
map("n", "<C-l>", "<C-W>l", opt)




--nnoremap <M-Up> :resize -2<CR>
--nnoremap <M-Down> :resize +2<CR>

--map <M-Left> :vertical resize -2<CR>
--nnoremap <M-Right> :vertical resize +2<CR>

map("n", "<A-h>", ":vertical resize -2<CR>", opt)
map("n", "<A-l>", ":vertical resize +2<CR>", opt)
--map("n", "<A-k>", "<C-w>k", opt)
--map("n", "<A-l>", "<C-w>l", opt)

--map <M-Left> :vertical resize 2<CR>
--nnoremap <M-Right> :vertical resize +2<CR>


--map <C-r> :source ~/.config/nvim/init.vim<CR>
--local lua_init = vim.fn.stdpath("config") .. "\\init.lua"
--map("n", "<C-r>", ":luafile ~/.config/nvim/init.lua<CR>", opt)
--map("n", "<C-s>", ":luafile " .. lua_init, opt)