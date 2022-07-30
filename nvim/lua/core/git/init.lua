if not require("utils.modules").check_if_module_is_installed("gitsigns")
then
  return
end

local M = {}

function M.configure()
  local config = require("core.git.config").config

  require("gitsigns").setup(config.gutter)
end

return M
