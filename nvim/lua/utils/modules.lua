local M = {}

function M.check_if_module_is_installed(module_name)
  local status, _ = pcall(require, module_name)
  return status
end

return M
