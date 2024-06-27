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
default_colorscheme = "meta5" -- set in `./plugins/awesome-vim-colorschemes.lua`
vim.g.termguicolors = true
vim.g.background = "dark"

-- Automatically change the current working directory
-- Sometimes useful, other times annoying and better off just use Netrw correctly
-- vim.cmd [[set autochdir]]

-- Turn off matching parenthesis -- this just annoys me
vim.g.loaded_matchparen = false

-- Netrw settings
vim.g.netrw_banner = false          -- remove banner
vim.g.netrw_liststyle = 3           -- tree viewer as default
vim.g.netrw_sizestyle = "h"         -- human readable sizes, not byte
vim.g.netrw_list_hide = vim.fn["netrw_gitignore#Hide"]() .. [[,.git/]] -- hide my git stuff

-- Fuzzy finding enhancements with `find` command
vim.opt.path:append("**")  -- recursive search when `find`ing
vim.opt.wildmenu = true    -- enhanced command line completion

vim.opt.wildignore:append("*.o")
vim.opt.wildignore:append("*.pyc")
vim.opt.wildignore:append("**/__pycache__/**")
vim.opt.wildignore:append("**/venv/**")
vim.opt.wildignore:append("**/node_modules/**")
vim.opt.wildignore:append("**/.git/**")

