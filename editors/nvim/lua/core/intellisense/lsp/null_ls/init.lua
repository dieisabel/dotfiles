local M = {}

if not require("utils.modules").check_if_module_is_installed("null-ls")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.intellisense.lsp.null_ls.config").config

    require("null-ls").setup(config)
    require("core.intellisense.lsp.null_ls.commands").apply_commands()
  end
end

return M
