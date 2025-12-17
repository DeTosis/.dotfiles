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
	use "lukas-reineke/indent-blankline.nvim"
	use 'neovim/nvim-lspconfig'
	use ({
		'hrsh7th/nvim-cmp',
		requires = {
			"hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
			"hrsh7th/cmp-buffer",       -- Buffer completions
			"hrsh7th/cmp-path",         -- Path completions
			"hrsh7th/cmp-cmdline",      -- Cmdline completions
			"L3MON4D3/LuaSnip",         -- Snippet engine
			"saadparwaiz1/cmp_luasnip", -- Snippet completions
			"rafamadriz/friendly-snippets",
		},
	})
end)
