local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<C-S-p>", ":Telescope command_palette<CR>", { silent = true },
         "Command palette", "command_palette.toggle", "Toggle command palette")
end

return M
