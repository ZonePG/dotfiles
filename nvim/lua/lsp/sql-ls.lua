require'lspconfig'.sqls.setup{
  settings = {
    sqls = {
      lowercaseKeywords = true,
      connections = {
        {
          driver = 'mysql',
          dataSourceName = 'root:root@tcp(127.0.0.1:3306)/mysql'
        },
        -- {
        --   driver = 'postgresql',
        --   dataSourceName = 'host=127.0.0.1 port=15432 user=postgres password=mysecretpassword1234 dbname=dvdrental sslmode=disable',
        -- },
      },
    },
  },


  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  on_attach = function(client, bufnr)
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    --Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')


    if client.resolved_capabilities.document_highlight then
      vim.api.nvim_exec([[
        hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
        hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
        hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
        augroup lsp_document_highlight
          autocmd! * <buffer>
          auto CursorHold <buffer> lua vim.lsp.buf.document_highlight()
          auto CursorMoved <buffer> lua vim.lsp.buf.clear_references()
        augroup END
      ]], false)
    end

    client.resolved_capabilities.execute_command = true

    require'sqls'.setup{}

  end
}

