vim.cmd "nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>"
vim.cmd "nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>"
vim.cmd "nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>"
vim.cmd "nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>"
vim.cmd "nnoremap <silent> gp <cmd>lua require'lsp'.PeekDefinition()<CR>"
vim.cmd "nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>"
vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd "nnoremap <silent> <C-p> :lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = O.lsp.popup_border}})<CR>"
vim.cmd "nnoremap <silent> <C-n> :lua vim.lsp.diagnostic.goto_next({popup_opts = {border = O.lsp.popup_border}})<CR>"
