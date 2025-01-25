return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets"
    },
    version = "*",
    opts = {
        keymap = {
            preset = "super-tab",
            ["<C-k>"] = { "select_prev", "fallback" },
            ["<C-j>"] = { "select_next", "fallback" },
        },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono",
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" }
        },
        completion = {
            accept = { auto_brackets = { enabled = false } },
            cycle = {
                from_top = true,
                from_bottom = true,
            }
        },
        enabled = function()
            return not CmpDisabled
        end
    },
    opts_extend = { "sources.default" },
    keys = {
        {
            "<leader>uc",
            function()
                CmpDisabled = not CmpDisabled
                vim.notify((CmpDisabled and "Disabled" or "Enabled") .. " completion")
            end,
            desc = "Toggle blink.cmp"
        }
    }
}
