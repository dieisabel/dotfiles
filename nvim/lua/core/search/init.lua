local M = {}

function M.configure()
  local config = require("core.search.config").config
  
  require("utils.options").load_options(config)
end

return M
