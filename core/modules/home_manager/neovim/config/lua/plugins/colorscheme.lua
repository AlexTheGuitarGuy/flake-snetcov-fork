local M = {}

M.url = "https://github.com/catppuccin/nvim"
M.branch = "main"
M.commit = "919d1f786338ebeced798afbf28cd085cd54542a"
M.name = "catppuccin"
M.main = "catppuccin"
M.priority = 1000
M.cmd = function()
  vim.cmd.colorscheme("catppuccin")
end
M.opts = {
  flavour = "mocha",
}

return M
