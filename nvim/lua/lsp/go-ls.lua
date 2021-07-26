local util = require "lspconfig/util"

require'lspconfig'.gopls.setup{
  cmd = { "gopls" },
  on_attach = require'lsp'.common_on_attach,
  root_dir = util.root_pattern("go.mod", ".git")
}
