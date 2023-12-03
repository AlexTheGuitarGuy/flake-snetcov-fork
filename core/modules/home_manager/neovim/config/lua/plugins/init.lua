local M = {}

local current_directory = vim.fn.expand("%:p:h")
local plugin_directory = current_directory .. "/lua/plugins"
local files = vim.fn.readdir(plugin_directory)

local lua_extension_pattern = "%.lua$"
local init_lua_pattern = "^init%.lua$"
local lua_module_name_pattern = "(.+)" .. lua_extension_pattern

for _, file in ipairs(files) do
  if file:match(lua_extension_pattern) and not file:match(init_lua_pattern) then
    local module_name = file:match(lua_module_name_pattern)
    local plugin = require("plugins." .. module_name)
    table.insert(M, plugin)
  end
end

return M
