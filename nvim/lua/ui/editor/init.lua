local M = {}

function M.configure()
  local config = require("ui.editor.config").config

  require("utils.options").load_options(config)
end

return M
