local M = {}

M.config = {
  highlight_hovered_item = false,
  show_symbol_details = false,
  keymaps = require("core.intellisense.lsp.outline.mappings").mappings,
  position = "left",
  width = 30,
  winblend = 1,
}

return M
