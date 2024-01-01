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

-- set leader key 
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- disable highlight for search: <leader> + h
map("n", "<leader>h", ":nohlsearch<CR>", opt)

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
-- Plugin keybindings
local pluginKeys = {}

--map <C-r> :source ~/.config/nvim/init.vim<CR>
--local lua_init = vim.fn.stdpath("config") .. "\\init.lua"
--map("n", "<C-r>", ":luafile ~/.config/nvim/init.lua<CR>", opt)
--map("n", "<C-s>", ":luafile " .. lua_init, opt)

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<cr>", opt)

pluginKeys.nvimTreeList = { -- 打开文件或文件夹
  { key = { "o", "<2-LeftMouse>" }, action = "edit" },
  { key = "<CR>", action = "system_open" },
  -- v分屏打开文件
  { key = "v", action = "vsplit" },
  -- h分屏打开文件
  { key = "h", action = "split" },
  -- Ignore (node_modules)
  { key = "i", action = "toggle_ignored" },
  -- Hide (dotfiles)
  { key = ".", action = "toggle_dotfiles" },
  { key = "R", action = "refresh" },
  -- 文件操作
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "y", action = "copy_name" },
  { key = "Y", action = "copy_path" },
  { key = "gy", action = "copy_absolute_path" },
  { key = "I", action = "toggle_file_info" },
  { key = "n", action = "tabnew" },
  -- 进入下一级
  { key = { "]" }, action = "cd" },
  -- 进入上一级
  { key = { "[" }, action = "dir_up" },
}

pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<C-j>"] = "move_selection_next",
    ["<C-k>"] = "move_selection_previous",
    ["<C-n>"] = "move_selection_next",
    ["<C-p>"] = "move_selection_previous",
    -- 历史记录
    ["<Down>"] = "cycle_history_next",
    ["<Up>"] = "cycle_history_prev",
    -- 关闭窗口
    -- ["<esc>"] = actions.close,
    ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}

return pluginKeys
