if not require("utils.modules").check_if_module_is_installed("nvim-tree")
then
  return
end

local M = {}

function M.configure()
  local config = require("core.file_explorer.config").config

  require("nvim-tree").setup(config)
  require("core.file_explorer.mappings").apply_mappings()
end

return M
