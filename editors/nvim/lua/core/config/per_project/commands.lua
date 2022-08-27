local M = {}

local commands = {
  { "Edit (create) local configuration", ":ConfigEdit" },
  { "Load local configuration", ":ConfigSource" },
  { "Trust local configuration", ":ConfigTrust" },
}

function M.apply_commands()
  if require("utils.modules").check_if_module_is_installed("command_palette")
  then
    local config_commands = require("core.config.commands").commands
    for key, value in ipairs(commands) do
      table.insert(config_commands, value)
    end
  end
end

return M
