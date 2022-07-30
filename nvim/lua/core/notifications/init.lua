if not require("utils.modules").check_if_module_is_installed("notify")
then
  return
end

local M = {}

function M.configure()
  local config = require("core.notifications.config").config

  require("notify").setup(config)
end

return M
