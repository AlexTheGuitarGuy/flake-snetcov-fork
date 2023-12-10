local M = {}

M.config = {
  fileencoding = 'utf-8',
  mouse = 'a',
  splitbelow = true,
  splitright = true,
  swapfile = false,
  number = true,
  relativenumber = true,
  signcolumn = 'yes',
  colorcolumn = '80',
  tabstop = 2,
  shiftwidth = 2,
}

M.init = function()
  for option, value in pairs(M.config) do
    vim.opt[option] = value
  end
end

return M
