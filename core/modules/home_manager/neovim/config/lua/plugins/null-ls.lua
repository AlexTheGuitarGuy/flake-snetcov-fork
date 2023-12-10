local keys = {
  {
    '<leader>fm',
    function()
      vim.lsp.buf.format()
    end,
    mode = 'n',
  },
}
local opts = function()
  local ls = require('null-ls')
  local formatting = ls.builtins.formatting
  local diagnostics = ls.builtins.diagnostics
  local completion = ls.builtins.completion
  return {
    sources = {
      formatting.stylua,

      formatting.eslint_d,
      diagnostics.eslint_d,

      completion.spell,
    },
  }
end

return {
  'jose-elias-alvarez/null-ls.nvim',
  dependencies = {
    'plenary.nvim',
  },
  keys = keys,
  opts = opts,
}
