return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {}}
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = {"clangd", "jdtls", "lua_ls", "ols",  "rust_analyzer", "gopls"}
        }
    end
}
