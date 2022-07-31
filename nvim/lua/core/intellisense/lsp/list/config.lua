local M = {}

M.config = {
  action_keys = require("core.intellisense.lsp.list.mappings").mappings,
}
M.config = vim.tbl_deep_extend(
  "keep", M.config, require("ui.intellisense.lsp.list.config").config
)

return M
