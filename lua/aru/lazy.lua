-- LAZY
--
-- Package manager. Keeps the whole thing working.


-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load Lazy and all plugins
require("lazy").setup("aru.plugins")

-- Keymaps for Lazy
local default_opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<leader>`", ":Lazy<CR>", default_opts)
