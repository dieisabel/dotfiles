local M = {}

if not require("utils.modules").check_if_module_is_installed("trouble")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.intellisense.lsp.list.config").config

    require("trouble").setup(config)
    require("core.intellisense.lsp.list.mappings").apply_mappings()
    require("core.intellisense.lsp.list.commands").apply_commands()
  end
end

return M
