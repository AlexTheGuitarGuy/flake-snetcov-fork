local M = {}

M.url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
M.dependencies = {
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim",
}
M.keys = {
	{
		"<leader>fb",
		":Telescope file_browser<CR>",
		mode = "n",
	},
	{
		"<leader>fb",
		":Telescope file_browser path=%:p:h select_buffer=true<CR>",
		mode = "n",
	},
}
M.opts = {}

return M
