local M = {}

if not require("utils.modules").check_if_module_is_installed("lspconfig")
then
  function M.configure() end
else
  function M.configure()
    local pyright_config = require("core.intellisense.lsp.servers.pyright").config
    require("lspconfig")["pyright"].setup(pyright_config)
  end
end

return M
