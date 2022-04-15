-- https://github.com/github/copilot.vim

vim.g.copilot_enabled = false
vim.g.copilot_no_tab_map = true

vim.keybinds.gmap("i", "<C-l>", "copilot#Accept('')", {silent = true, expr = true})

-- 使用 C-l 确认补全
-- 使用 M-[ 查看上一个补全
-- 使用 M-[ 查看下一个补全
-- 使用 C-[ 关闭补全
