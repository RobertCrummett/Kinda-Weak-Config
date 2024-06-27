-- Some tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Write shorter lines!
vim.wo.wrap = false

-- Leader
-- vim.g.mapleader = " "

-- Line Numbers, not really all that useful for me
vim.opt.number = false
vim.opt.relativenumber = false
vim.opt.signcolumn = "number"

-- Cursor line
vim.opt.cursorline = false

-- Spelling off by default
vim.opt.spell = false
vim.opt.spelllang = "en_us"

-- Colors
default_colorscheme = "meta5" -- set in `./plugins/awesome-vim-colorschemes.lua`
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Automatically change the current working directory
-- Sometimes useful, other times annoying and better off just use Netrw correctly
vim.opt.autochdir = false

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

