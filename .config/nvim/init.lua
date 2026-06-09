-- General options: {{{

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.trouble_lualine = true

vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.signcolumn = "number"
vim.opt.cursorline = true

-- disable diagnostics by default (avoid distractions)
vim.diagnostic.enable(false)

-- Select shell
if vim.fn.executable("zsh")then
    vim.opt.shell = "zsh"
elseif vim.fn.executable("bash") then
    vim.opt.shell = "bash"
else
    vim.opt.shell = "sh"
end
-- }}}


-- Lazy.nvim {{{
do
    -- Bootstrap lazy.nvim
    local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
    if not (vim.uv or vim.loop).fs_stat(lazypath) then
      local lazyrepo = "https://github.com/folke/lazy.nvim.git"
      local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
      if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
          { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
          { out, "WarningMsg" },
          { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
      end
    end
    vim.opt.rtp:prepend(lazypath)

    -- Setup lazy.nvim
    require("lazy").setup({
      spec = {
        -- import your plugins
        { import = "plugins" },
      },
      -- Configure any other settings here. See the documentation for more details.
      -- colorscheme that will be used when installing plugins.
      install = { colorscheme = { "default" } },
      -- automatically check for plugin updates
      checker = { enabled = true },
    })
end
-- }}}


-- Autocmds {{{
local augroup = vim.api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

autocmd({"BufNewFile", "BufRead"}, {
    pattern = "*.h",
    command = "set filetype=c"
})
-- }}}

-- This allows loading ad-hoc arbitrary scripts created at the project working directory
do
    local cwd = vim.fn.getcwd()
    local lua_dir = cwd .. '/.nvim/lua'

    if vim.loop.fs_stat(lua_dir) then
      -- Get a list of all *.lua files in the directory
      for _, file in ipairs(vim.fn.glob(lua_dir .. '/*.lua', false, true)) do
        local ok, err = pcall(dofile, file)
        if not ok then
          Snacks.notify('Error loading ' .. file .. ': ' .. err, "error")
        end
      end
    end
end

-- LSP {{{
do
    local enabled_lsps = {
        "lua_ls"
    }

    vim.lsp.enable(enabled_lsps)
end
-- }}}

vim.cmd("colorscheme catppuccin-mocha")

-- Keymaps
require("config.keymaps")
