-- CMP
-- https://github.com/hrsh7th/nvim-cmp?tab=readme-ov-file
--
-- A completion engine for NVIM! Requires a ton of stuff, lol.


return{
	{
		'hrsh7th/nvim-cmp',
		name = "CMP",
		dependencies = {
			{'L3MON4D3/LuaSnip', 			name = "~Dep: Lua Snip"},
			{'saadparwaiz1/cmp_luasnip', 	name = "~Dep: CMP Lua Snip"},
			{'hrsh7th/cmp-nvim-lsp', 		name = "~Dep: CMP-Nvim-LSP"},
			{'hrsh7th/cmp-buffer', 			name = "~Dep: CMP-Buffer"},
			{'hrsh7th/cmp-path', 			name = "~Dep: CMP-Path"},
			{'hrsh7th/cmp-cmdline', 		name = "~Dep: CMP-CMDLine"},
		},
		config = function()
		-- Set up nvim-cmp.
			local cmp = require'cmp'

			cmp.setup({
				snippet = {
					expand = function(args)
						require('luasnip').lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					['<C-b>'] = cmp.mapping.scroll_docs(-4),
					['<C-f>'] = cmp.mapping.scroll_docs(4),
					['<C-Space>'] = cmp.mapping.complete(),
					['<C-e>'] = cmp.mapping.abort(),

					-- Accept currently selected item. Set `select` to `false`
					-- to only confirm explicitly selected items.
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = 'nvim_lsp' },
					{ name = 'luasnip' },
				}, {
					{ name = 'buffer' },
				})
			})

			-- Set configuration for specific filetype.
			cmp.setup.filetype('gitcommit', {
				sources = cmp.config.sources({
					{ name = 'git' },
				}, {
					{ name = 'buffer' },
				})
			})

			-- Use buffer source for `/` and `?` (if you enabled `native_menu`,
			-- this won't work anymore).
			cmp.setup.cmdline({ '/', '?' }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = 'buffer' }
				}
			})

			-- Use cmdline & path source for ':' (if you enabled `native_menu`,
			-- this won't work anymore).
			cmp.setup.cmdline(':', {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = 'path' }
				}, {
					{ name = 'cmdline' }
				})
			})

			-- Set up lspconfig.
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			-- MANUALLY ADD LSP SERVERS HERE
			require('lspconfig')['pyright'].setup {
				capabilities = capabilities
			}
			require('lspconfig')['tsserver'].setup {
				capabilities = capabilities
			}
			require('lspconfig')['rust_analyzer'].setup {
				capabilities = capabilities
			}
			require('lspconfig')['gopls'].setup {
				capabilities = capabilities
			}
			require('lspconfig')['lua_ls'].setup {
				capabilities = capabilities
			}
			require('lspconfig')['clangd'].setup {
				capabilities = capabilities
			}
			require('lspconfig')['html'].setup {
				capabilities = capabilities
			}
			require('lspconfig')['texlab'].setup {
				capabilities = capabilities
			}
			require('lspconfig')['cssls'].setup {
				capabilities = capabilities
			}
			end,
			},
}
