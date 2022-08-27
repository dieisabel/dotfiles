local M = {}

M.config = {
  pickers = {
    help_tags = {
      theme = "dropdown",
      initial_mode = "insert",
      previewer = false,
    },
    buffers = {
      theme = "dropdown",
      initial_mode = "normal",
      previewer = false,
    }
  },
  extensions = {
    command_palette = require("core.finder.commands").commands,
  },
}

return M
