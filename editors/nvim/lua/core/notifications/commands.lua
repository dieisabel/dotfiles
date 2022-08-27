local M = {}

local commands = {
  "Notifications",
    { "History", ":Telescope notify" },
}

function M.apply_commands()
  if require("utils.modules").check_if_module_is_installed("command_palette")
  then
    table.insert(require("command_palette").CpMenu, commands)
  end
end

return M
