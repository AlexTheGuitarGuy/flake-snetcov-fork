local keys = function()
  local harpoon = require('harpoon')

  return {
    {
      '<leader>ha',
      function()
        harpoon:list():append()
      end,
      mode = 'n',
    },
    {
      '<leader>he',
      function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      mode = 'n',
    },
    {
      '<C-A-u>',
      function()
        harpoon:list():select(1)
      end,
      mode = 'n',
    },
    {
      '<C-A-i>',
      function()
        harpoon:list():select(2)
      end,
      mode = 'n',
    },
    {
      '<C-A-o>',
      function()
        harpoon:list():select(3)
      end,
      mode = 'n',
    },
    {
      '<C-A-p>',
      function()
        harpoon:list():select(4)
      end,
      mode = 'n',
    },
  }
end

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'plenary.nvim',
  },
  keys = keys,
}
