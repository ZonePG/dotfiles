local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require "lspconfig".clangd.setup {
  on_attach = require "lsp".common_on_attach,
  capabilities = capabilities
}
