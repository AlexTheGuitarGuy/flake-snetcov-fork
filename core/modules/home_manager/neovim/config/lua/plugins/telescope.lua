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
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = {
    'plenary.nvim',
  },
  keys = keys,
}
