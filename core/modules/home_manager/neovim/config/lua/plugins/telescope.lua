local M = {}

local keys = function(self)
    local telescope = require(self.main .. ".builtin")
    return {
        {
            "<leader>ff",
            telescope.find_files,
            mode = "n",
        },
        {
            "<leader>fw",
            telescope.live_grep,
            mode = "n",
        },
        {
            "<leader>gf",
            telescope.git_files,
            mode = "n",
        },
    }
end

M.url = "https://github.com/nvim-telescope/telescope.nvim"
M.tag = "0.1.5"
M.name = "telescope"
M.main = "telescope"
M.dependencies = {
  "plenary",
}
M.keys = keys

return M