local M = {}

local commands = {
  { "Toggle outline", ":SymbolsOutline" },
}

function M.apply_commands()
  if require("utils.modules").check_if_module_is_installed("command_palette")
  then
    local lsp_commands = require("core.intellisense.lsp.commands").commands
    for key, value in ipairs(commands) do
      table.insert(lsp_commands, value)
    end
  end
end

return M
