-- # TELESCOPE
-- https://github.com/nvim-telescope/telescope.nvim
--
-- A fuzzy finder for Neovim!
--
-- ## DEPENDENCIES
--	   ### System-wide
--	   ripgrep: For grep strings (Already installed)
--
--	   ### NVIM specific
--	   Plenary: For some util functions the code uses (Loaded in a file of its own
--	   Devicons: For cute icons (Loaded in this file)
--
-- ## NOTES
--
-- Telescope is awesome and i love it so much.


return {
	"nvim-telescope/telescope.nvim",
	name = "Telescope",
	tag = '0.1.5',
	dependencies = {
		{"nvim-tree/nvim-web-devicons", name = "~Dep:Dev-Icons"},
	},
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader><leader>', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
	end,
}
