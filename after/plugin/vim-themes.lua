-- Set default colorscheme
function set_colorscheme(colorscheme)
    colorscheme = colorscheme or default_colorscheme
    vim.cmd.colorscheme(colorscheme)
end

set_colorscheme()
