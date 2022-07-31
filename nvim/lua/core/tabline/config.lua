local M = {}

local delete_buffer = require("scripts.bufdel").delete_buffer

M.config = {
  options = {
    mode = "buffers",
    close_command = delete_buffer,
    right_mouse_command = delete_buffer,
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    persist_buffer_sort = true,
    enforce_regular_tabs = false,
  },
}
M.config = vim.tbl_deep_extend(
  "keep", M.config, require("ui.tabline.config").config
)

return M
