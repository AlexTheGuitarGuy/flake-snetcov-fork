
return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    vim.keymap.set("n", "<leader>e", ":Oil<CR>", { noremap = true, silent = true })
    require("oil").setup({
      win_options = {
        signcolumn = "yes:2",
      },
      keymaps = {
        ["<C-s>"] = false,
        ["|"] = "actions.select_vsplit",
        ["<C-l>"] = false,
        ["<C-h>"] = false,
      },
    })
  end,
}
