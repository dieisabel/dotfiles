local M = {}

function M.configure()
  require("core.integrations.git.gutter").configure()
  require("core.integrations.git.commands").apply_commands()
end

return M
