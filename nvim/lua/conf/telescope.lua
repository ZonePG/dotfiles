-- https://github.com/nvim-telescope/telescope.nvim

-- WARN: telescope 手动安装依赖 fd 和 repgrep
-- https://github.com/sharkdp/fd
-- https://github.com/BurntSushi/ripgrep

local actions = require("telescope.actions")

require("telescope").setup()

-- 查找文件
vim.keybinds.gmap("n", "<leader>ff", "<cmd>Telescope find_files theme=dropdown<CR>", vim.keybinds.opts)
-- 查找文字
vim.keybinds.gmap("n", "<leader>fg", "<cmd>Telescope live_grep theme=dropdown<CR>", vim.keybinds.opts)
-- 查找特殊符号
vim.keybinds.gmap("n", "<leader>fb", "<cmd>Telescope buffers theme=dropdown<CR>", vim.keybinds.opts)
-- 查找帮助文档
vim.keybinds.gmap("n", "<leader>fh", "<cmd>Telescope help_tags theme=dropdown<CR>", vim.keybinds.opts)
-- 查找最近打开的文件
vim.keybinds.gmap("n", "<leader>fo", "<cmd>Telescope oldfiles theme=dropdown<CR>", vim.keybinds.opts)
-- 查找 marks 标记
vim.keybinds.gmap("n", "<leader>fm", "<cmd>Telescope marks theme=dropdown<CR>", vim.keybinds.opts)

-- <CR> 打开选中的搜索结果
-- <Tab> 选中当前的搜索结果，可搭配 <CR> 一次性打开多个
-- <C-v> 垂直拆分打开选中的搜索结果
-- <C-c> 退出搜索框
-- <C-n> 选择下一项目（插入模式下）
-- <C-p> 选择上一个项目（插入模式下）
-- j     选择下一个项目（普通模式下）
-- k     选择上一个项目（普通模式下）
