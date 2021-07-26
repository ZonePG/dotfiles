local util = require "lspconfig/util"

require'lspconfig'.rust_analyzer.setup{
  on_attach = require'lsp'.common_on_attach,
}
