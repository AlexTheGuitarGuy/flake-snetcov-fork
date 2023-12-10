local keys = {
  {
    '<leader>fb',
    ':Telescope file_browser<CR>',
    mode = 'n',
  },
  {
    '<leader>fb',
    ':Telescope file_browser path=%:p:h select_buffer=true<CR>',
    mode = 'n',
  },
}
return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  keys = keys,
  opts = {},
}
