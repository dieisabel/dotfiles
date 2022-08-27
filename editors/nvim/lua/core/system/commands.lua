local M = {}

M.commands = {
  "System",
    { "Run healthchecks", ":checkhealth" },
}

if require("utils.modules").check_if_module_is_installed("telescope")
then
  table.insert(M.commands, { "Help", ":Telescope help_tags" })
end

function M.apply_commands()
  if require("utils.modules").check_if_module_is_installed("command_palette")
  then
    table.insert(require("command_palette").CpMenu, M.commands)
  end
end

return M
