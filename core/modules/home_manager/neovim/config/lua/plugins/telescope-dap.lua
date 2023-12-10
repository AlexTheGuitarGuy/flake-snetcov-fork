local M = {}

M.url = "https://github.com/nvim-telescope/telescope-dap.nvim"
M.dependencies = {
	"mfussenegger/nvim-dap",
	"nvim-telescope/telescope.nvim",
	"nvim-treesitter/nvim-treesitter",
}
M.config = function()
	require("telescope").load_extension("dap")
end

return M
