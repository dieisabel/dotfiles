local M = {}

function M.configure()
  local config = require("core.editor.config").config

  require("utils.options").load_options(config)
  require("core.editor.mappings").apply_mappings()
end

return M
