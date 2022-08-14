local M = {}

function M.configure()
  local config = require("core.indentation.config").config
  
  require("utils.options").load_options(config)
end

return M