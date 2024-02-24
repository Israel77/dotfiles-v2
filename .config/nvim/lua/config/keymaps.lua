-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Some mappings closer  to what I use in vscode
map("n", "<leader>fs", "<cmd>w<cr><esc>", { desc = "Save file" })
map("n", "<leader>;", "<leader>cf", { desc = "Format", remap = true })
map("n", "<Space><Bslash>", "<C-w>v", { desc = "Split window right", remap = true })
