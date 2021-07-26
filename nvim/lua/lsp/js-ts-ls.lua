local util = require "lspconfig/util"

require'lspconfig'.tsserver.setup {
  on_attach = require'lsp'.common_on_attach,
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_dir = util.root_pattern("package.json", "tsconfig.json", ".git") or util.dirname
}
