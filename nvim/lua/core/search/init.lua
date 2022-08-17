local M = {}

function M.configure()
  local config = require("core.search.config").config

  require("utils.options").load_options(config)
  require("core.search.mappings").apply_mappings()
end

return M
