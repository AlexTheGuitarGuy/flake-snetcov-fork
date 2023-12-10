local M = {}

local servers = {
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
    },
  },
  tsserver = {},
	gopls = {},
	groovyls = {},
	gradle_ls = {},
}

M.url = 'https://github.com/neovim/nvim-lspconfig'
M.dependencies = {
  'hrsh7th/cmp-nvim-lsp',
}
M.event = { 'BufReadPre', 'BufNewFile' }
M.cmd = 'LspInfo'
M.config = function()
  local lsp_zero = require('lsp-zero')
  lsp_zero.extend_lspconfig()

  lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
  end)

  local lspconfig = require('lspconfig')
  for name, opts in pairs(servers) do
    lspconfig[name].setup(opts)
  end
end

return M
