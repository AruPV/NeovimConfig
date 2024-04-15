-- 									TREESITTER
--				https://github.com/nvim-treesitter/nvim-treesitter
--
-- An interface for the parser generator "Tree-sitter," which dynamically
-- creates a syntax tree of the file in a buffer thus allowing for better
-- highlighting, as well as static type checking.

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	name = "Tree-sitter",
	dependencies = {
			{'nvim-tree/nvim-web-devicons', name = "~Dep: Web Devicons"},
	},
	config = function()
		require'nvim-treesitter.configs'.setup({
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"python",
				"go",
				"javascript",
				"tsx",
				"typescript"
			},

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			-- If you need to change the installation directory of the parsers 
			--	(see -> Advanced Setup)
			-- parser_install_dir = "/some/path/to/store/parsers", 
			-- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

			highlight = {
			enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
