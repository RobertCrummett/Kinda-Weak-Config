local set = vim.opt

-- Some tab settings
set.expandtab = true
set.tabstop = 8
set.softtabstop = 8
set.shiftwidth = 8

-- Line warping
vim.wo.wrap = false

-- Leader
vim.g.mapleader = " "

-- Numbers
set.number = true
set.relativenumber = true
set.signcolumn = "number"

-- Cursor line
set.cursorline = true

-- Spelling off by default
set.spell = false
set.spelllang = "en_us"

-- Colors
set.termguicolors = true
vim.cmd [[colorscheme murphy]]

-- Automatically change the current working directory
set.autochdir = true
