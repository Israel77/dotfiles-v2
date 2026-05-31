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
        { "mason-org/mason.nvim", "mason-org/mason-lspconfig.nvim" }
    },
    opts = {
        servers = {
            lua_ls = {},
            gopls = {},
            ols = {},
            rust_analyzer = {},
            zls = {},
            clangd = {
                cmd = {
                    "clangd",
                    "--fallback-style=webkit"
                }
            }
        },
    },
    -- keys = require("keymaps").get(),
    config = function(_, opts)

        for server, config in pairs(opts.servers) do
            config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
            vim.lsp.enable(server)
        end
    end
}
