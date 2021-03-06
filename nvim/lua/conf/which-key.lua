local wk = require("which-key")

local opts = {
    mode = "n", -- NORMAL mode
    prefix = ",",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true -- use `nowait` when creating keymaps
}

local vopts = {
    mode = "v", -- VISUAL mode
    prefix = ",",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true -- use `nowait` when creating keymaps
}

local vmappings = {}

wk.setup {
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
        -- the presets plugin, adds help for a bunch of default keybindings in Neovim
        -- No actual key bindings are created
        presets = {
            operators = false, -- adds help for operators like d, y, ...
            motions = false, -- adds help for motions
            text_objects = false, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = false -- bindings for prefixed with g
        },
        spelling = {enabled = true, suggestions = 20} -- use which-key for spelling hints
    },
    icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+" -- symbol prepended to a group
    },
    window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
        padding = {2, 2, 2, 2} -- extra window padding [top, right, bottom, left]
    },
    layout = {
        height = {min = 4, max = 25}, -- min and max height of the columns
        width = {min = 20, max = 50}, -- min and max width of the columns
        spacing = 3 -- spacing between columns
    },
    hidden = {"<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
    show_help = true -- show help message on the command line when the popup is visible
}

wk.register(
    {
        ["j"] = {"<C-W>s", "split below"},
        ["l"] = {"<C-W>v", "split right"},
        ["o"] = {"<cmd>only<CR>", "only: close-all-other-windows"},
        ["."] = {"<cmd>vsplit $MYVIMRC<CR>", "open-init.lua"},
        [";"] = {":vsplit ~/.config/zsh/.zshrc<CR>", "open-zsh"},
        ["q"] = {"<cmd>q!<CR>", "Quit"},
        ["b"] = {":! xelatex % && open -a Preview && open -a iTerm<CR>", "latex"},
        g = {
            name = "Git",
            j = {"<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk"},
            k = {"<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk"},
            s = {"<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk"},
            u = {
                "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
                "Undo Stage Hunk"
            },
            r = {"<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk"},
            R = {"<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer"},
            p = {"<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk"},
            l = {"<cmd>lua require 'gitsigns'.blame_line{full=true}<cr>", "Blame"},
            o = {"<cmd>Telescope git_status<cr>", "Open changed file"},
            b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
            c = {"<cmd>Telescope git_commits<cr>", "Checkout commit"},
            C = {
                "<cmd>Telescope git_bcommits<cr>",
                "Checkout commit(for current file)"
            }
        }
    },
    opts
)

wk.register(vmappings, vopts)
