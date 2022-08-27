local M = {}

function M.check_if_module_is_installed(module_name)
  local status, _ = pcall(require, module_name)
  return status
end

function M.configure_modules(modules, root)
  for i = 1, #modules do
    require(root .. "." .. modules[i]).configure()
  end
end

return M
