local M = {}

if not require("utils.modules").check_if_module_is_installed("notify")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.notifications.config").config

    require("notify").setup(config)
    require("core.notifications.commands").apply_commands()
  end
end

return M
