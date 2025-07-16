-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'



	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim', 'debugloop/telescope-undo.nvim'} }
	}

	-- Or with configuration
	use({
		'projekt0n/github-nvim-theme',
		config = function()
			require('github-theme').setup({
				-- ...
			})

			vim.cmd('colorscheme github_dark_default')
		end
	})

	--treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	use('ThePrimeagen/harpoon')
	use('tpope/vim-fugitive')
	use('neovim/nvim-lspconfig')
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use('VidocqH/lsp-lens.nvim')
	use({
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
		end,
	})




	-- Autocompletion plugins
	use 'hrsh7th/nvim-cmp'          -- Completion engine
	use 'hrsh7th/cmp-nvim-lsp'      -- LSP source for nvim-cmp
	use 'hrsh7th/cmp-buffer'        -- Buffer completions
	use 'hrsh7th/cmp-path'          -- Path completions
	use 'hrsh7th/cmp-cmdline'       -- Cmdline completions
	use 'L3MON4D3/LuaSnip'          -- Snippet engine (optional but recommended)
	use 'saadparwaiz1/cmp_luasnip'  -- Snippet completions (optional)
	
	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end
	}

end)
