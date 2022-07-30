if not require("utils.modules").check_if_module_is_installed("toggleterm")
then
  return
end

local M = {}

function M.configure()
  local config = require("core.terminal.config").config

  require("toggleterm").setup(config)
  require("core.terminal.mappings").apply_mappings()
end

return M
