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

local config = function()
  local lsp_zero = require("lsp-zero")
  local util = require("lspconfig.util")
  lsp_zero.extend_lspconfig()

  lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })

    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function()
      vim.lsp.buf.definition()
    end, opts)
    vim.keymap.set("n", "K", function()
      vim.lsp.buf.hover()
    end, opts)
    vim.keymap.set("n", "[d", function()
      vim.diagnostic.goto_next()
    end, opts)
    vim.keymap.set("n", "]d", function()
      vim.diagnostic.goto_prev()
    end, opts)
    vim.keymap.set("n", "gD", function()
      vim.lsp.buf.declaration()
    end, opts)
    vim.keymap.set("n", "gI", function()
      vim.lsp.buf.implementation()
    end, opts)
    vim.keymap.set("n", "gr", function()
      vim.lsp.buf.references()
    end, opts)
    vim.keymap.set("n", "<leader>lf", function()
      vim.lsp.buf.format({
        async = true,
        filter = function(client)
          return client.name ~= "tsserver"
        end,
      })
    end, opts)
    vim.keymap.set("n", "<leader>li", ":LspInfo<CR>", opts)
    vim.keymap.set("n", "<leader>la", function()
      vim.lsp.buf.code_action()
    end, opts)
    vim.keymap.set("n", "<leader>lr", function()
      vim.lsp.buf.rename()
    end, opts)
    vim.keymap.set("n", "<leader>ls", function()
      vim.lsp.buf.signature_help()
    end, opts)
    vim.keymap.set("n", "<leader>lq", function()
      vim.diagnostic.setloclist()
    end, opts)
    vim.keymap.set("n", "<leader>lh", function()
      vim.diagnostic.open_float()
    end, opts)
  end)

  lsp_zero.configure("angularls", {
    root_dir = util.root_pattern("angular.json", "project.json"),
  })

  local lspconfig = require("lspconfig")
  for name, opts in pairs(servers) do
    lspconfig[name].setup(opts)
  end
end

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  event = { "BufReadPre", "BufNewFile" },
  cmd = "LspInfo",
  config = config,
}
