return {
	{ "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	  end,
	  opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	  }
	},
	-- Stuff Needed for LSP
	{'neovim/nvim-lspconfig'},

	{'hrsh7th/nvim-cmp'
	},
	-- Autocompletion
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-buffer' },
	{'hrsh7th/cmp-path'   },
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/nvim-cmp'   },
	-- LuaSnip specific
	{'saadparwaiz1/cmp_luasnip'}, -- Snippets source for nvim-cmp
	{'L3MON4D3/LuaSnip'}, -- Snippets plugin

	{'williamboman/mason.nvim'}, -- These two are needed by lsp-zero idk
	{'williamboman/mason-lspconfig.nvim'},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{'nvim-lua/plenary.nvim'}, -- For Telescope
	{'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' }},
--	{'ribru17/bamboo.nvim',
--		lazy = false,
--		priority = 1000,
--		config = function()
--			require('bamboo').setup {}
--			require('bamboo').load()
--  		end,
--	},
	-- Help splits vertically
	{'anuvyklack/help-vsplit.nvim',
--		config = function()
--			require('help-vsplit').setup()
--		end,
	},
	{ "rose-pine/neovim",
		config = function()
			require('rosepine')
		end,
	},
	---	{'kevinhwang91/nvim-ufo',
	---		config= function()
	---			require('kevinhwang91/promise-async').load()
	---		end,
	---	},
	--vimtex
	{"lervag/vimtex"},
	-- Vimwiki
	{'vimwiki/vimwiki'},
	{"nvim-neotest/neotest",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"alfaix/neotest-gtest"
		},
		config = function()
			require("neotest").setup({
				adapters = {
					require("neotest-gtest").setup({})
				}
			})
		end,
	},
	{"folke/trouble.nvim",
	 	dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	}
}
