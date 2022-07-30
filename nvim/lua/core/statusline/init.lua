if not require("utils.modules").check_if_module_is_installed("lualine")
then
  return
end

local M = {}

function M.configure()
  local config = require("core.statusline.config").config

  require("lualine").setup(config)
end

return M
