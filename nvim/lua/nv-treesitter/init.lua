require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- disable = { "haskell" },  -- list of language that will be disabled
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false
  },
  rainbow = {
    enable = true
  },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = false},
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = ",r",
        goto_definition = "gnd",
        list_definitions = "gnD",
        list_definitions_toc = "gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },
  }
}
