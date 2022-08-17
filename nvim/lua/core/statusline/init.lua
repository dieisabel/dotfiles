local M = {}

if not require("utils.modules").check_if_module_is_installed("lualine")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.statusline.config").config

    require("lualine").setup(config)
  end
end

return M
