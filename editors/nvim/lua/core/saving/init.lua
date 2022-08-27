local M = {}

function M.configure()
  require("core.saving.mappings").apply_mappings()
end

return M
