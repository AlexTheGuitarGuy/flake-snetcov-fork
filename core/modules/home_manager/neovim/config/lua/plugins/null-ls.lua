local M = {}

M.url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
M.dependencies = {
    "plenary.nvim"
}
M.keys = {
    {
        "<leader>fm",
        function()
            vim.lsp.buf.format()
        end,
        mode = "n",
    }
}
M.opts = function()
    local ls = require("null-ls")
    local formatting = ls.builtins.formatting;
    local diagnostics = ls.builtins.diagnostics;
    local completion = ls.builtins.completion;
    return {
        sources = {
            formatting.stylua,

            formatting.eslint_d,
            diagnostics.eslint_d,

            completion.spell,
        }
    }
end

return M
