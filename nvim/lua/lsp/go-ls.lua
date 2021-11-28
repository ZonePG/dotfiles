local util = require "lspconfig/util"
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require "lspconfig".gopls.setup {
  cmd = {"/opt/homebrew/bin/gopls"},
  on_attach = require "lsp".common_on_attach,
  root_dir = util.root_pattern("go.mod", ".git"),
  capabilities = capabilities
}
