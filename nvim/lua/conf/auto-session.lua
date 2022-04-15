-- https://github.com/rmagatti/auto-session

-- 推荐设置
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

require("auto-session").setup(
  {
    -- 自动加载最后保存的一次会话
    auto_session_enable_last_session = true,
    -- 保存会话时自动关闭 nvim-tree
    -- 这是因为 nvim-tree 如果处于开启
    -- 状态，会破坏会话的保存
    pre_save_cmds = {"tabdo NvimTreeClose"}
  }
)

-- 在每次退出 neovim 时自动保存会话
-- 其实该插件不加这个自动命令也能
-- 自动保存会话，但总是感觉效果不理想
-- 所以这里我就自己加了个自动命令
vim.cmd([[
    autocmd VimLeavePre * silent! :SaveSession
]])
