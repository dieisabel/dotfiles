if not require("utils.modules").check_if_module_is_installed("bufferline")
then
  return
end

local M = {}

function M.configure()
  local config = require("core.tabline.config").config

  require("bufferline").setup(config)
  require("core.tabline.mappings").apply_mappings()
end

return M
