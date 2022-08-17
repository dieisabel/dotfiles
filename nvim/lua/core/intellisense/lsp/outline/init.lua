local M = {}

if not require("utils.modules").check_if_module_is_installed("symbols-outline")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.intellisense.lsp.outline.config").config

    vim.g.symbols_outline = config
    require("core.intellisense.lsp.outline.mappings").apply_mappings()
    require("core.intellisense.lsp.outline.commands").apply_commands()
  end
end

return M
