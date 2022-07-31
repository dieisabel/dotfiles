local M = {}

M.config = {
  open_mapping = "<C-t>",
}
M.config = vim.tbl_deep_extend(
  "keep", M.config, require("ui.terminal.config").config
)

return M
