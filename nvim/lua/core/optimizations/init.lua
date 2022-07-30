if not require("utils.modules").check_if_module_is_installed("impatient")
then
  return
end

local M = {}

function M.configure()
  require("core.optimizations.startup").populate_impatient()
  require("impatient")
end

return M
