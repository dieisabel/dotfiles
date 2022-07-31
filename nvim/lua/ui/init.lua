local M = {}

function M.initialize()
  require("ui.editor").configure()
  require("ui.theme").configure()
  require("ui.statusline").configure()
  require("ui.notifications").configure()
end

return M
