local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local util = require "lspconfig/util"

require "lspconfig".pyright.setup {
  capabilities = capabilities,
  cmd = {"pyright-langserver", "--stdio"},
  on_attach = require "lsp".common_on_attach,
  root_dir = util.root_pattern(".git") or util.dirname,
  settings = {
    python = {
      pythonPath = "/opt/homebrew/bin/python3",
      venvPath = "/opt/homebrew/Caskroom/miniforge/base/envs"
    }
  }
}
