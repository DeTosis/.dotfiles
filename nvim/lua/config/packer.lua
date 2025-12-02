vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ( "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use { 'bluz71/vim-nightfly-colors' }
  use {  'ThePrimeagen/vim-be-good' }
end)
