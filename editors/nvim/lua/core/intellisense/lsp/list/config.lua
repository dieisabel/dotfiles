local M = {}

M.config = {
  action_keys = require("core.intellisense.lsp.list.mappings").mappings,
  height = 13,
  auto_preview = false,
  auto_jump = {},
}

return M
