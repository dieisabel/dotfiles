local M = {}

if not require("utils.modules").check_if_module_is_installed("notify")
then
  function M.configure() end
else
  function M.configure()
    local config = require("ui.notifications.config").config

    require("notify").setup(config)
  end
end

return M
