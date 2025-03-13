return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = {"clangd", "jdtls", "lua_ls", "ols",  "rust_analyzer"}
        }
    end
}
