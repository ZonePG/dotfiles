-- Better nav for omnicomplete
-- vim.api.nvim_set_keymap('i', '<expr> <C-j>', '<C-n>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('i', '<expr> <C-k>', '<C-p>', {noremap = true, silent = true})

-- resize window
vim.api.nvim_set_keymap("n", "∆", ":resize -2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "˚", ":resize +2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "˙", ":vertical resize -2<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "¬", ":vertical resize +2<CR>", { silent = true })

-- <esc>
vim.api.nvim_set_keymap('i', '<Esc>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-[>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', {noremap = true, silent = true})

-- better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- TAB
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- Alternate way to save
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })

-- Alternate way to quit
vim.api.nvim_set_keymap('n', '<C-q>', ':wq!<CR>', { noremap = true, silent = true })

-- Use control-c instead of escape
vim.api.nvim_set_keymap('n', '<C-c>', '<Esc>', { noremap = true, silent = true })

-- Better tabbing
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Tab Complete
-- vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap = true, silent = true })
-- navigate tab completion with <c-j> and <c-k>
-- runs conditionally
vim.cmd 'inoremap <expr> <C-j> pumvisible() ? "\\<C-n>" : "\\<C-j>"'
vim.cmd 'inoremap <expr> <C-k> pumvisible() ? "\\<C-p>" : "\\<C-k>"'


vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = ','

-- explore
local nvim_tree_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/nvim-tree.lua"
if vim.fn.empty(vim.fn.glob(nvim_tree_path)) > 0 then
  vim.api.nvim_set_keymap('n', '<Space>e', ':Lexplore<CR>', {noremap = true, silent = true})
else
  vim.api.nvim_set_keymap('n', '<Space>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
  vim.api.nvim_set_keymap('n', '<Space>f', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})
end

-- close buffer
vim.api.nvim_set_keymap('n', '<Leader>w', ':vsplit<CR>:bprevious<CR><C-w>h:bd<CR>', { noremap = true, silent = true })
