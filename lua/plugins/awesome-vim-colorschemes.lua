-- A compliation of alot of awesome Vim colorschemes
return {
    "rafi/awesome-vim-colorschemes",
    config = function()
        -- Set default colorscheme
        vim.cmd ("colorscheme " .. default_colorscheme)
    end
}
