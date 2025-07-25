vim.g.mapleader = " "

local keymap = vim.keymap

-- 插入模式

keymap.set("i","jk","<ESC>")

-- 正常模式 
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

keymap.set("n","<leader>w",":w<CR>")
keymap.set("n","<leader>q",":q<CR>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- nvim-tree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>")
keymap.set("n","<leader>t",":NvimTreeFocus<CR>")

-- 切换buffer
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")
