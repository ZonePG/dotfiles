-- better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", {silent = true})
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", {silent = true})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", {silent = true})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", {silent = true})

-- TAB
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", {noremap = true, silent = true})

-- Alternate way to save
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", {noremap = true, silent = true})

-- Alternate way to quit
vim.api.nvim_set_keymap("n", "<C-q>", ":wq!<CR>", {noremap = true, silent = true})

-- Use control-c instead of escape
vim.api.nvim_set_keymap("n", "<C-c>", "<Esc>", {noremap = true, silent = true})

-- Better tabbing
vim.api.nvim_set_keymap("v", "<", "<gv", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", ">", ">gv", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<Space>", "<Nop>", {noremap = true, silent = true})

vim.g.mapleader = ","

-- 默认的键位设置函数太长了，所以这里将它们重新引用一下
vim.keybinds = {
  gmap = vim.api.nvim_set_keymap,
  bmap = vim.api.nvim_buf_set_keymap,
  dgmap = vim.api.nvim_del_keymap,
  dbmap = vim.api.nvim_buf_del_keymap,
  opts = {noremap = true, silent = true}
}

-- 插入模下 jk 退出插入模式
vim.keybinds.gmap("i", "<Esc>", "<Nop>", vim.keybinds.opts)
vim.keybinds.gmap("i", "<C-[>", "<Nop>", vim.keybinds.opts)
vim.keybinds.gmap("i", "jk", "<Esc>", vim.keybinds.opts)
vim.keybinds.gmap("i", "kj", "<Esc>", vim.keybinds.opts)

-- 用 H 和 L 代替 ^ 与 $
vim.keybinds.gmap("n", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("v", "H", "^", vim.keybinds.opts)
vim.keybinds.gmap("n", "L", "$", vim.keybinds.opts)
vim.keybinds.gmap("v", "L", "$", vim.keybinds.opts)

-- 将 C-u 和 C-d 调整为上下滑动 10 行而不是半页
vim.keybinds.gmap("n", "<C-u>", "10k", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-d>", "10j", vim.keybinds.opts)

-- 插入模式下的上下左右移动
-- vim.keybinds.gmap("i", "<C-k>", "<up>", vim.keybinds.opts)
-- vim.keybinds.gmap("i", "<C-j>", "<down>", vim.keybinds.opts)
-- vim.keybinds.gmap("i", "<C-h>", "<left>", vim.keybinds.opts)
-- vim.keybinds.gmap("i", "<C-l>", "<right>", vim.keybinds.opts)

-- 修改分屏大小
vim.keybinds.gmap("n", "˚", "<cmd>res +1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "∆", "<cmd>res -1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "˙", "<cmd>vertical resize-1<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "¬", "<cmd>vertical resize+1<CR>", vim.keybinds.opts)

-- 正常模式下按 ESC 取消高亮显示
vim.keybinds.gmap("n", "<ESC>", ":nohlsearch<CR>", vim.keybinds.opts)

-- 通过 leader cs 切换拼写检查
vim.keybinds.gmap("n", "<leader>cs", "<cmd>set spell!<CR>", vim.keybinds.opts)
