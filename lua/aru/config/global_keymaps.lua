-- ### NOTES
--
-- This file does not contain all keymaps, it only contains the non-plugin
-- specific keymaps. You can find the keymaps for each plugin in the configuration
-- options of those specific plugins

-- Set default option
local default_opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>fp", ":Ex<CR>", default_opts)
keymap("n", "<leader>v", ":vsplit<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>.", ":bnext<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>,", ":bprev<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>t", ":terminal<CR>", default_opts)

-- remap

vim.api.nvim_set_keymap("n", ";", "l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "l", "h", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<leader>;", "<C-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>h", {noremap = true, silent = true})
