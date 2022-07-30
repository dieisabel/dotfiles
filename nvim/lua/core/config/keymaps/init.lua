if not require("utils.modules").check_if_module_is_installed("nvim-mapper")
then
  return
end

local M = {}

function M.configure()
  local config = require("core.config.keymaps.config").config

  require("nvim-mapper").setup(config)
  require("core.config.keymaps.mappings").apply_mappings()
end

return M
