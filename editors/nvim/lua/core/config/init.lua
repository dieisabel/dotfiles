local M = {}

function M.configure()
  require("core.config.keymaps").configure()
  require("core.config.per_project").configure()
  require("core.config.commands").apply_commands()
end

return M
