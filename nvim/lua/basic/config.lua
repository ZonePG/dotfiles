-- 自动切换输入法（Fcitx 框架）
vim.g.ImSelectToggleInput = function()
    local input_status = tonumber(vim.fn.system("im-select"))
    if input_status == nil then
        vim.fn.system("im-select com.apple.keylayout.ABC")
    end
end

-- vim.cmd("autocmd InsertLeave * call ImSelectToggleInput()")

-- 是否透明背景
vim.g.background_transparency = false

-- 指定 undotree 缓存存放路径
vim.g.undotree_dir = "~/.cache/nvim/undodir"

-- 指定代码片段存储路径
vim.g.vsnip_snippet_dir = "~/.config/nvim/snippet"
