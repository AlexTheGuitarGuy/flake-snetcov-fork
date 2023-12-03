local M = {}

M.url = "https://github.com/neovim/nvim-lspconfig"
M.branch = "master"
M.commit = "694aaec65733e2d54d393abf80e526f86726c988"
M.name = "lspconfig"
M.main = "lspconfig"
M.servers = {
    "lua_ls"

    -- webdev
    "tsserver"

    -- java stuff
    "jdtls"
    "gradle_ls"
    "groovy_ls"
}

return M