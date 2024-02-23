
local default_opts = { noremap = true, silent = true }

-- VIM
vim.api.nvim_set_keymap("n", "<leader>fp", ":Ex<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>v", ":vsplit<CR>", default_opts)
-- TELESCOPE
vim.api.nvim_set_keymap("n", "<leader><leader>", ":Telescope find_files<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>g", ":Telescope grep_string<CR>", default_opts)
-- LAZY
vim.api.nvim_set_keymap("n", "<leader>l", ":Lazy<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>l", ":Lazy<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>.", ":bnext<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>,", ":bprev<CR>", default_opts)
vim.api.nvim_set_keymap("n", "<leader>t", ":terminal<CR>", default_opts)
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

--vim.api.nvim_set_keymap("n", "<leader>e", 
--map <space>e :lua vim.diagnostic.open_float(0, {scope="line"})<CR>                                                      
