--	# LANGUAGE SERVER PROTOCOL SETUP
--
--	The LSP is configured through Mason (configured in this file), which then
--	implement lsp-config and mason-lspconfig (also configured in this file).
--
--	## MASON
--	https://github.com/williamboman/mason.nvim						
--
-- 	A tool that allows for easy integration of LSPs, DAPs, Linters, Formatters.
--
-- 	## LSPCONFIG
--
--	Does the job of installing language servers
--
--	### NOTES
--
--	Tree-sitter does not interact with the LSP. The LSP will allow for static
--	type checking, as well as autocompletion. Treesitter is more limited in its
--	capabilities, but it loads faster and provides syntax highlighting (as well
--	as integration with other tooling that does not require a full LSP to run).
-- 

return {
	{ -- MASON
		"williamboman/mason.nvim",
		name = "Mason",
		config = function()
			require("mason").setup()
		end
	},

	{ -- MASON-LSPCONFIG
	    "williamboman/mason-lspconfig.nvim",
		name = "Mason-LSPConfig",
		config = function()
			require("mason-lspconfig").setup()
		end
	},

	{ -- LSPCONFIG 
		"https://github.com/neovim/nvim-lspconfig",
		name = "LSPConfig",
		config = function()
			local lspc = require('lspconfig')

			-- SETUP LANGUAGE SERVERS

			--Programming Languages
			lspc.pyright.setup {}					-- Python
			lspc.solargraph.setup {}				-- Ruby
			lspc.tsserver.setup {}					-- Typescript
			lspc.rust_analyzer.setup {}				-- Rust
			lspc.gopls.setup {}						-- Go
			lspc.lua_ls.setup {}					-- Lua
			lspc.clangd.setup {}
			lspc.emmet_language_server.setup {}
			lspc.gdscript.setup {}

			--Markup Languages
			lspc.html.setup {}						-- HTML
			lspc.texlab.setup {}					-- TEX
			lspc.cssls.setup {}						-- CSS
			lspc.tailwindcss.setup {}


			-- SETUP MAPPINGS
			-- Global mappings.
			-- See `:help vim.diagnostic.*` for documentation on any of the below functions
			vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
			vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
			vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
			vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)
		end
	}
}
