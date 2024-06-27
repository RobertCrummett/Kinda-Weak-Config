local set = vim.opt

-- This function checks for file type extension
-- Multiple types of 'TeX' files will call this file, e.g. *.tex, *.cls, *.sty, ...
-- Useful for seperating these instances
-- 
-- Author: Nate Crummett
local function is_filetype(extension)
    local filename = vim.api.nvim_buf_get_name(0)
    if string.match(filename, ".+." .. extension .. "$") ~= nil then
        return true
    end
    return false
end

-- Spelling off by default
set.spell = false

-- Spelling on for *.tex files
if is_filetype("tex") then
    set.spell = true
end

-- Some tab settings
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
