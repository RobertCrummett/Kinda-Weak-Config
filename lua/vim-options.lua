-- Some tab settings
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Write shorter lines!
vim.wo.wrap = false

-- Leader
-- vim.g.mapleader = " "

-- Line Numbers, not really all that useful for me
-- vim.o.number = true
-- vim.o.relativenumber = true
-- vim.o.signcolumn = "number"

-- Cursor line
-- vim.o.cursorline = true

-- Spelling off by default
vim.g.spell = false
vim.g.spelllang = "en_us"

-- Colors
vim.g.termguicolors = true
vim.cmd [[colorscheme zellner]] -- default flash bang
vim.o.background = "light"

-- Automatically change the current working directory
-- Sometimes useful, other times annoying and better off just use Netrw correctly
-- vim.cmd [[set autochdir]]

-- Turn off matching parenthesis -- this just annoys me
vim.g.loaded_matchparen = false

-- Netrw settings
vim.g.netrw_banner = false          -- remove banner
vim.g.netrw_liststyle = 3           -- tree viewer as default
vim.g.netrw_sizestyle = 'h'         -- human readable sizes, not bytes
vim.g.netrw_list_hide = vim.fn['netrw_gitignore#Hide']() .. [[,.git/]] -- hide my git stuff
