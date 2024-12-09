vim.g.mapleader = " "
vim.wo.relativenumber = true
vim.wo.number = true
vim.cmd('set shiftwidth=4')
vim.cmd('set tabstop=4')

vim.cmd('set termguicolors')
vim.cmd('set background=dark')
vim.cmd('autocmd FileType js setlocal shiftwidth=2 tabstop=2')
vim.cmd('autocmd FileType jsx setlocal shiftwidth=2 tabstop=2')
vim.cmd('autocmd FileType ts setlocal shiftwidth=2 tabstop=2')
vim.cmd('autocmd FileType tsx setlocal shiftwidth=2 tabstop=2')
vim.cmd('autocmd FileType css setlocal shiftwidth=2 tabstop=2')
vim.cmd('autocmd FileType html setlocal shiftwidth=2 tabstop=2')
