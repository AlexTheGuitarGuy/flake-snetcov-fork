return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  cmd = function()
    vim.cmd.colorscheme("catppuccin-latte")
  end,
  opts = {
    flavour = "mocha",
  },
}
