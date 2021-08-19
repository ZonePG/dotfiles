local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"


if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " ..
                install_path)
    execute "packadd packer.nvim"
end

-- local packer_ok, packer = pcall(require, "packer")
-- if not packer_ok then
--   return
-- end

-- packer.init {
--   -- compile_path = vim.fn.stdpath('data')..'/site/pack/loader/start/packer.nvim/plugin/packer_compiled.vim',
--   compile_path = require("packer.util").join_paths(vim.fn.stdpath('config'), 'plugin', 'packer_compiled.vim'),
--   git = {
--     clone_timeout = 300
--   },
--   display = {
--     open_fn = function()
--       return require("packer.util").float { border = "single" }
--     end,
--   },
-- }

-- vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(function(use)
  -- Packer can manage itself as an optional plugin
  use {"wbthomason/packer.nvim", opt = true}

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'mfussenegger/nvim-jdtls'
  use 'kabouzeid/nvim-lspinstall'

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

  -- Information
  use 'nanotee/nvim-lua-guide'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
  use 'nvim-treesitter/playground'
  use 'p00f/nvim-ts-rainbow'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter-refactor'

  -- StatusLine and Bufferline
  use 'glepnir/galaxyline.nvim'
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

  -- telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- Intellisense
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'

  -- Color
  use 'norcalli/nvim-colorizer.lua'
  use 'navarasu/onedark.nvim'

  -- Git
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }


  -- General Plugins
  use 'kevinhwang91/nvim-bqf'
  use 'airblade/vim-rooter'
  use 'windwp/nvim-autopairs'

  -- which key
  use 'folke/which-key.nvim'

  -- Comments
  use "terrortylor/nvim-comment"
  require('nvim_comment').setup()

  -- formmatter
  use 'mhartington/formatter.nvim'

  -- lint
  use 'mfussenegger/nvim-lint'

  -- dashboard
  use 'glepnir/dashboard-nvim'

  -- sqls
  use 'nanotee/sqls.nvim'

  -- rust
  use 'simrat39/rust-tools.nvim'

end)
