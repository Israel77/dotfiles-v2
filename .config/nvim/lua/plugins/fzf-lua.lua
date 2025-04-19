return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "FzfLua",

    {
        "neovim/nvim-lspconfig",
        keys = {
            {"<leader>;", vim.lsp.buf.format, { desc = "Format buffer" } },
            {"<leader>r", vim.lsp.buf.rename, { desc = "Format buffer" } },
            { "gr", vim.lsp.buf.references, desc = "References", nowait = true },
            { "gI", vim.lsp.buf.implementation, desc = "Goto Implementation" },
            { "gy", vim.lsp.buf.type_definition, desc = "Goto T[y]pe Definition" },
            { "gD", "<cmd>FzfLua lsp_declarations jump1=true ignore_current_line=true<cr>", desc = "Goto Declaration" },
            { "K", function() return vim.lsp.buf.hover() end, desc = "Hover" },
        },
    },

}
