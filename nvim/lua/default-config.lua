Lvim = {
  leader = ",",
  colorscheme = "spacegray",
  line_wrap_cursor_movement = true,
  transparent_window = false,
  format_on_save = true,
  keys = {},

  -- TODO why do we need this?
  builtin = {
    lspinstall = {},
    telescope = {},
    compe = {},
    autopairs = {},
    treesitter = {},
    nvimtree = {},
    gitsigns = {},
    which_key = {},
    comment = {},
    rooter = {},
    galaxyline = {},
    bufferline = {},
    dap = {},
    dashboard = {},
    terminal = {},
  },

  lsp = {
    diagnostics = {
      virtual_text = {
        prefix = "",
        spacing = 0,
      },
      signs = true,
      underline = true,
    },
    document_highlight = true,
    popup_border = "single",
    default_keybinds = true,
    on_attach_callback = nil,
  },

  plugins = {
    -- use lv-config.lua for this not put here
  },

  autocommands = {
    { "FileType", "qf", "set nobuflisted" },
  },
}

require('nv-which-key').config()
