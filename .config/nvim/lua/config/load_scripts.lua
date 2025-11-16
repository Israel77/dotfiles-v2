local cwd = vim.fn.getcwd()
local lua_dir = cwd .. '/.nvim/lua'

-- Check if the directory exists
if vim.loop.fs_stat(lua_dir) then
  -- Get a list of all *.lua files in the directory
  for _, file in ipairs(vim.fn.glob(lua_dir .. '/*.lua', false, true)) do
    -- Load each file safely
    local ok, err = pcall(dofile, file)
    if not ok then
      Snacks.notify('Error loading ' .. file .. ': ' .. err, "error")
    end
  end
end
