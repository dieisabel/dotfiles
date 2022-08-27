local M = {}

if not require("utils.modules").check_if_module_is_installed("auto-session")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.sessions.config").config

    require("auto-session").setup(config)
  end
end

return M
