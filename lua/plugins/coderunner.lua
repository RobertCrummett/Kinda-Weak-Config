-- Runs code with :RunCode command!!
return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
			filetype = {
				python = {
					"python -u", -- Python
				},
				tex = {
					"latexmk -pdflatex=lualatex -pdf ", -- LaTex, configured for LuaTeX compilation to pdf
				},
				lua = {
					"lua ", -- Lua
				},
				cpp = {
					"make", -- C++
				},
				r = {
					"Rscript ./", -- R
				},
			},
		})
	end,
}
