local M = {}

if not require("utils.modules").check_if_module_is_installed("gitsigns")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.integrations.git.gutter.config").config

    require("gitsigns").setup(config)
    require("core.integrations.git.gutter.commands").apply_commands()
  end
end

return M
