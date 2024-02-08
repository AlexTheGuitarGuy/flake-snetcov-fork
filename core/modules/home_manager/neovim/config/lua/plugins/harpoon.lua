local keys = function()
  local harpoon = require("harpoon")

  return {
    {
      "<leader>ha",
      function()
        harpoon:list():append()
      end,
      mode = "n",
    },
    {
      "<leader>hl",
      function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      mode = "n",
    },
    {
      "<C-A-h>",
      function()
        harpoon:list():select(1)
      end,
      mode = "n",
    },
    {
      "<C-A-j>",
      function()
        harpoon:list():select(2)
      end,
      mode = "n",
    },
    {
      "<C-A-k>",
      function()
        harpoon:list():select(3)
      end,
      mode = "n",
    },
    {
      "<C-A-l>",
      function()
        harpoon:list():select(4)
      end,
      mode = "n",
    },
  }
end

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "plenary.nvim",
  },
  keys = keys,
}
