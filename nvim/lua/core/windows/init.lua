local M = {}

function M.configure()
  require("core.windows.mappings").apply_mappings()
end

return M
