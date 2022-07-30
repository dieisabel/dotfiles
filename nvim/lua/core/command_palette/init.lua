if not require("utils.modules").check_if_module_is_installed("command_palette")
then
  return
end

local M = {}

function M.configure()
  require("core.command_palette.mappings").apply_mappings()
end

return M
