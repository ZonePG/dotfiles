-- https://github.com/nvim-treesitter/nvim-treesitter
-- https://github.com/p00f/nvim-ts-rainbow

require("nvim-treesitter.configs").setup(
    {
        -- parser 名称
        ensure_installed = {"c", "lua", "rust"},
        -- 同步下载高亮支持
        sync_install = false,
        -- 高亮相关
        highlight = {
            -- 启用高亮支持
            enable = true,
            -- 使用 treesitter 高亮而不是 neovim 内置的高亮
            additional_vim_regex_highlighting = false
        },
        -- 范围选择
        incremental_selection = {
            enable = true,
            keymaps = {
                -- 初始化选择
                init_selection = "<CR>",
                -- 递增
                node_incremental = "<CR>",
                -- 递减
                node_decremental = "<BS>"
                -- 选择一个范围
                -- scope_incremental = "<TAB>"
            }
        },
        -- 缩进，关闭
        indent = {
            enable = false
        },
        -- 彩虹括号，由 nvim-ts-rainbow 插件提供
        rainbow = {
            enable = true,
            extended_mode = true
            -- colors = {}, -- table of hex strings
            -- termcolors = {} -- table of colour name strings
        },
        -- 根据当前上下文定义文件类型，由 nvim-ts-context-commentstring 插件提供
        context_commentstring = {
            enable = true
        },
        refactor = {
            -- highlight_definitions = {enable = true},
            -- highlight_current_scope = {enable = true},
            smart_rename = {
                enable = true,
                keymaps = {
                    smart_rename = ",rr"
                }
            }
        }
    }
)
