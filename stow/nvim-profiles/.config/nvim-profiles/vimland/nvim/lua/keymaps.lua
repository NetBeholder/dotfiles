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

map("n", "<UP>", "", opt)
map("n", "<Down>", "", opt)
map("n", "<Left>", "", opt)
map("n", "<Right>", "", opt)


--wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
--local k = require("core.utils").keymap


-----
-- windows management

map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt) 	-- vertical split
map("n", "sh", ":sp<CR>", opt) 		-- horizontal split
map("n", "sc", "<C-w>c", opt)		-- close last window
map("n", "so", "<C-w>o", opt) 		-- close others

--moving beetwen panes by vim-style keys <ctrl>+hjkl
map("n", "<C-j>", "<C-W>j", opt)
map("n", "<C-k>", "<C-W>k", opt)
map("n", "<C-h>", "<C-W>h", opt)
map("n", "<C-l>", "<C-W>l", opt)

-- resize window size: <Alt> + hjkl
map("n", "<A-h>", ":vertical resize -2<CR>", opt)
map("n", "<A-l>", ":vertical resize +2<CR>", opt)
map("n", "<A-k>", ":resize -2<CR>", opt)
map("n", "<A-j>", ":resize +2<CR>", opt)

map("n", "s=", "<C-w>=", opt)		-- set a separator in the middle of the screen

---

--map <C-r> :source ~/.config/nvim/init.vim<CR>
--local lua_init = vim.fn.stdpath("config") .. "\\init.lua"
--map("n", "<C-r>", ":luafile ~/.config/nvim/init.lua<CR>", opt)
--map("n", "<C-s>", ":luafile " .. lua_init, opt)
