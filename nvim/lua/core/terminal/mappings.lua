local M = {}

function M.apply_mappings()
  local mapkey_virtual = require("utils.mappings").mapkey_virtual
  local config = require("core.terminal.config").config

  mapkey_virtual("n", config.open_mapping, "", { silent = true },
                 "Terminal", "terminal.toggle", "Toggle terminal")
end

return M
