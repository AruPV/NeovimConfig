-- WHICH-KEY
--
-- Gives you hints about your shortcuts when you start typing them

return {
	{ "folke/which-key.nvim",
	  event = "VeryLazy",
	  name = "Which-Key?",
	  init = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	  end,
	  opts = {
	    -- refer to the configuration section in the github
	  }
	}
}
