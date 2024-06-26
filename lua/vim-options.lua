local set = vim.opt

-- Some tab settings
set.expandtab = true
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

-- Write shorter lines!
vim.wo.wrap = false

-- Leader
vim.g.mapleader = " "

-- Line Numbers
set.number = true
set.relativenumber = true
set.signcolumn = "number"

-- Cursor line
set.cursorline = false

-- Spelling off by default
set.spell = false
set.spelllang = "en_us"

-- Short cut to turn spelling on & off
vim.keymap.set("n", "<Leader>sp", function()
    set.spell = not set.spell:get() 
end)

-- No auto comment blocks
set.formatoptions:remove {"c", "r", "o"}

-- Colors
default_colorscheme = "rose-pine"
set.termguicolors = true
set.background = "dark"

-- Shorthand for setting colorscheme
vim.keymap.set("n", "<Leader>cs", ":colorscheme ")

-- Transparent background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Automatically change the current working directory
-- Sometimes useful, other times annoying 
set.autochdir = false

-- Turn off matching parenthesis -- this just annoys me
vim.g.loaded_matchparen = false

-- Netrw settings
vim.g.netrw_banner = false          -- remove banner
vim.g.netrw_liststyle = 3           -- tree viewer as default
vim.g.netrw_sizestyle = "h"         -- human readable sizes, not byte
vim.g.netrw_list_hide = 
    vim.fn["netrw_gitignore#Hide"]() .. 
    [[,.git/]]                      -- hide my git stuff

-- Fuzzy finding enhancements with `find` command
set.path:append("**")  -- recursive search when `find`ing
set.wildmenu = true    -- enhanced command line completion

-- Ignore these while fuzzy finding
set.wildignore:append {
    "*.o",                    -- object files
    "*.pyc",                  -- cython
    "**/__pycache__/**",      -- python cache
    "**/venv/**",             -- python virtual environment
    "**/node_modules/**",     -- node js modules
    "**/.git/**",             -- git files
}

