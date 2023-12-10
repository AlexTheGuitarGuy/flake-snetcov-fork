local M = {}

M.url = 'https://github.com/VonHeikemen/lsp-zero.nvim'
M.branch = 'v3.x'
M.lazy = true
M.config = false
M.init = function()
  -- Disable automatic setup, we are doing it manually
  vim.g.lsp_zero_extend_cmp = 0
  vim.g.lsp_zero_extend_lspconfig = 0
end

return M
