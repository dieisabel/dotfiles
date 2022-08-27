local M = {}

if not require("utils.modules").check_if_module_is_installed("config-local")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.config.per_project.config").config

    require("config-local").setup(config)
    require("core.config.per_project.commands").apply_commands()
  end
end

return M
