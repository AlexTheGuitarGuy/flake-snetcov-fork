local M = {}

local options = require("core.options")
local keymaps = require("core.keymaps")
local lazy = require("core.lazy")

M.init = function()
  options.init()
  keymaps.init()
  lazy.init()
end

return M
