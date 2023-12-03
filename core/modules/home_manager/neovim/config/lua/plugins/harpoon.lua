local M = {}

local keys = function(self)
  local harpoon = require(self.main)

  return {
    {
      "<leader>ha",
      function()
        harpoon:list():append()
      end,
      mode = "n",
    },
    {
      "<leader>he",
      function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      mode = "n",
    },
    {
      "<C-A-u>",
      function()
        harpoon:list():select(1)
      end,
      mode = "n",
    },
    {
      "<C-A-i>",
      function()
        harpoon:list():select(2)
      end,
      mode = "n",
    },
    {
      "<C-A-o>",
      function()
        harpoon:list():select(3)
      end,
      mode = "n",
    },
    {
      "<C-A-p>",
      function()
        harpoon:list():select(4)
      end,
      mode = "n",
    },
  }
end

M.url = "https://github.com/ThePrimeagen/harpoon"
M.branch = "harpoon2"
M.commit = "581da797f9d66485f841525af596255270c2bcf5"
M.name = "harpoon"
M.main = "harpoon"
M.dependencies = {
  "plenary",
}
M.keys = keys

return M
