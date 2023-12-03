local M = {}

M.config = {
  fileencoding = "utf-8",
  mouse = "a",
  splitbelow = true,
  splitright = true,
  swapfile = false,
  number = true,
  relativenumber = true,
  signcolumn = "yes",
}

M.init = function()
  for option, value in pairs(M.config) do
    vim.opt[option] = value
  end
end

return M
