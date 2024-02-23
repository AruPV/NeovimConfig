vim.g.mapleader = " " 
vim.wo.relativenumber = true
vim.wo.number = true

-- Bootstrap lazy.nvim
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

-- Load lazy.vim
require("lazy").setup("plugins")

-- Load keymaps
require("keymaps")
require("mason").setup()
require("lsp")
require("editor")
