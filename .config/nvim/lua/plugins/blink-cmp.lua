return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets"
    },
    version = "*",
    keymap = { preset = "default" },
    appearence = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono"
    },
    source = {
        default = { "lsp", "path", "snippets", "buffer" }
    },
    opts_extend = { "sources.default" }
}
