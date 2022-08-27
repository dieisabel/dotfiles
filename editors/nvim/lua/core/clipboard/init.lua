local M = {}

function M.configure()
  local config = require("core.clipboard.config").config

  require("utils.options").load_options(config)
end

return M
