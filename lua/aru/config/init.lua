require("aru.config.editor")
require("aru.config.global_keymaps")

-- This should be moved to a file of its own

vim.filetype.add({
	extension = {
		cppm = 'c'
	}
})
