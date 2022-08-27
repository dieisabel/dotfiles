local M = {}

if not require("utils.modules").check_if_module_is_installed("lspconfig")
then
  function M.configure() end
else
  function M.configure()
  end
end

return M
