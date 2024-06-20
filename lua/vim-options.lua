-- Some tab settings
vim.o.expandtab = true
vim.o.tabstop = 8
vim.o.softtabstop = 8
vim.o.shiftwidth = 8

-- Line warping
vim.wo.wrap = false

-- Leader
vim.g.mapleader = " "

-- Numbers
-- vim.o.number = true
-- vim.o.relativenumber = true
-- vim.o.signcolumn = "number"

-- Cursor line
vim.o.cursorline = true

-- Spelling off by default
vim.o.spell = false
vim.o.spelllang = "en_us"

-- Colors
vim.o.termguicolors = true
vim.cmd [[colorscheme zellner]]

-- Automatically change the current working directory
vim.o.autochdir = true

-- Turn off matching parenthesis
vim.g.loaded_matchparen = false

