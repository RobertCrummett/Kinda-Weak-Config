-- Set neovim colorscheme
local function set_colorscheme(colorscheme)
    colorscheme = colorscheme or default_colorscheme
    vim.cmd.colorscheme(colorscheme)
end

set_colorscheme() -- sets default colorscheme
