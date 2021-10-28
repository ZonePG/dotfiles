require'lspconfig'.pyright.setup{
  on_attach = require'lsp'.common_on_attach,
  settings = {
    python = {
      pythonPath = "/opt/homebrew/bin/python3",
    }
  }
}
