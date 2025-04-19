return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
        { "saghen/blink.cmp" },
        { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" }
    },
    opts = {
        servers = {
            lua_ls = {},
            ols = {},
            rust_analyzer = {}
        },
    },
    -- keys = require("keymaps").get(),
    config = function(_, opts)
        local lspconfig = require('lspconfig')

        for server, config in pairs(opts.servers) do
            config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end
    end
}
