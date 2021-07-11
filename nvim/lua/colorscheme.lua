vim.cmd('autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" } })')

vim.cmd('hi Comment cterm=italic')
vim.cmd('let g:onedark_hide_endofbuffer=1')
vim.cmd('let g:onedark_terminal_italics=1')
vim.cmd('let g:onedark_termcolors=256')

-- vim.cmd('syntax on')
vim.cmd('colorscheme onedark')

vim.cmd('set termguicolors')
vim.cmd('hi LineNr ctermbg=NONE guibg=NONE')
