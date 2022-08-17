local M = {}

if not require("utils.modules").check_if_module_is_installed("scrollview")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.scrollbar.config").config

    require("scrollview").setup(config)
  end
end

return M
