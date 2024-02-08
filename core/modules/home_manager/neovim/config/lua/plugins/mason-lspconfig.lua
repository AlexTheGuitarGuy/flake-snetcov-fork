return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      "angularls",
      "beautysh",
      "cssls",
      "html",
      "jsonls",
      "pyright",
      "sqlls",
      "tsserver",
      "rust_analyzer",
      "yamlls",
      "pyright",
      "dockerls",
      "eslint",
      "graphql",
      "svelte",
      "tailwindcss",
      "lua_ls",
    })
  end,
}
