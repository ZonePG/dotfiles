-- better window movement
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', {noremap = true, silent = true})

vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n' '<Leader>h', ':set hlsearch!<CR>' {noremap = true, silent = true})
