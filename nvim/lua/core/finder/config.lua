local M = {}

M.config = {
  defaults = {
    initial_mode = "insert",
  },
  extensions = {
    command_palette = require("core.command_palette.commands").commands,
  },
}

return M
