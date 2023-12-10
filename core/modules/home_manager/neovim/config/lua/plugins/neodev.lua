local M = {}

M.url = "https://github.com/folke/neodev.nvim"
M.opts = {
	library = {
		plugins = {
			"nvim-dap-ui",
		},
		types = true,
	},
}

return M
