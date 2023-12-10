local M = {}

local keys = function()
  local telescope = require('telescope.builtin')
  return {
    {
      '<leader>ff',
      telescope.find_files,
      mode = 'n',
    },
    {
      '<leader>fw',
      telescope.live_grep,
      mode = 'n',
    },
    {
      '<leader>gf',
      telescope.git_files,
      mode = 'n',
    },
  }
end

M.url = 'https://github.com/nvim-telescope/telescope.nvim'
M.tag = '0.1.5'
M.dependencies = {
  'plenary.nvim',
}
M.keys = keys

return M
