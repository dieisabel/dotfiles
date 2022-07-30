local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<C-S-e>", ":NvimTreeToggle<CR>", { silent = true },
         "File Explorer", "file_explorer.toggle", "Toggle file explorer")
end

return M
