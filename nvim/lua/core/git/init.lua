local M = {}

if not require("utils.modules").check_if_module_is_installed("gitsigns")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.git.config").config

    require("gitsigns").setup(config.gutter)
  end
end

return M
