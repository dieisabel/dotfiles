if not require("utils.modules").check_if_module_is_installed("auto-session")
then
  return
end

local M = {}

function M.configure()
  local config = require("core.sessions.config").config

  require("auto-session").setup(config)
end

return M
