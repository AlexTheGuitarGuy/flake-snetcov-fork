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

--[[ local ensure_installed = {
  'angularls',
  'cssls',
  'html',
  'jsonls',
  'pyright',
  'sqlls',
  'tsserver',
  'rust_analyzer',
  'yamlls',
  'pyright',
  'dockerls',
  'eslint',
  'graphql',
  'svelte',
  'tailwindcss',
  'lua_ls',
} ]]

local config = function()
  local lsp_zero = require('lsp-zero')
  local util = require('lspconfig.util')
  lsp_zero.extend_lspconfig()

  lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
  end)

  lsp_zero.configure('angularls', {
    root_dir = util.root_pattern('angular.json', 'project.json'),
  })

  local lspconfig = require('lspconfig')
  for name, opts in pairs(servers) do
    lspconfig[name].setup(opts)
  end
end

return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
  },
  event = { 'BufReadPre', 'BufNewFile' },
  cmd = 'LspInfo',
  config = config,
}
