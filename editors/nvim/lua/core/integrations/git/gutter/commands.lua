local M = {}

local commands = {
  { "Preview hunk", ":Gitsigns preview_hunk" },
  { "Toggle line blame", ":Gitsigns toggle_current_line_blame" },
  { "Toggle column signs", ":Gitsigns toggle_signs" },
  { "Toggle number highlight", ":Gitsigns toggle_numhl" },
}

function M.apply_commands()
  if require("utils.modules").check_if_module_is_installed("command_palette")
  then
    local git_commands = require("core.integrations.git.commands").commands
    for key, value in ipairs(commands) do
      table.insert(git_commands, value)
    end
  end
end

return M
