return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets"
    },
    version = "*",
    opts = {
        keymap = { preset = "super-tab" },
        appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = "mono"
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" }
        },
        completion = {
            accept = { auto_brackets = { enabled = false } },
        },
        enabled = function()
            return not CmpDisabled
        end
    },
    opts_extend = { "sources.default" },
    keys = {
        {
            "<leader>ct",
            function()
                CmpDisabled = not CmpDisabled
                vim.notify("blink.cmp " .. (CmpDisabled and "disabled" or "enabled"))
            end,
            desc = "Toggle blink.cmp"
        }
    }
}
