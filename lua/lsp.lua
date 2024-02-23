local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
	vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
	vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
	vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>') 
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- to learn how to use mason.nvim with lsp-zero
-- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	"pyright",
  	"gopls",
	"html",
	"texlab",
	"lua_ls",
	"cssls",
	"rust_analyzer",
	"clangd",
	"tsserver"},
  handlers = {
    lsp_zero.default_setup,
  },
})
require("lspconfig").pyright.setup{capabilits = lsp_capabilities}
require("lspconfig").lua_ls.setup{capabilits = lsp_capabilities}
