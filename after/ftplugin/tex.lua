local set = vim.opt

local function is_filetype(extension)
        local filename = vim.api.nvim_buf_get_name(0)
        if string.match(filename, ".+." .. extension .. "$") ~= nil then
                return true
        end
        return false
end

-- Spelling off by default
set.spell = false

if is_filetype("tex") then
        -- Spelling on for tex files
        set.spell = true
end

-- Some tab settings
set.expandtab = true
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
