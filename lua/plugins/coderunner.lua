-- Runs code with :RunCode command!!
return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
      project_path = vim.fn.expand "~/.config/nvim/project_manager.json",
      before_run_filetype = function()
        vim.api.nvim_command("w")
      end,
			filetype = {
          python = "python3 -u",
          tex = "latexmk -pdflatex=lualatex -pdf",
          lua = "lua",
          r = "Rscript",
			  },
			})

    -- Remaps
    vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
	end,
}
