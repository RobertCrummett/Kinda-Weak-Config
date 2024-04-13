return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "python", "c", "cpp", "r", "latex", "query", "json", "make", "cmake", "objc" },
      auto_install = true,
      sync_install = false,
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end
}
