local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey
  local mapkey_virtual = require("utils.mappings").mapkey

  mapkey("n", "<C-S-e>", ":NvimTreeToggle<CR>", { silent = true },
         "File Explorer", "file_explorer.toggle", "Toggle file explorer")
  mapkey_virtual("n", "<a>", "", { silent = true },
                 "File Explorer", "file_explorer.add", "Add new file or directory")
  mapkey_virtual("n", "<l>", "", { silent = true },
                 "File Explorer", "file_explorer.expand", "Expand folder or edit file")
  mapkey_virtual("n", "<d>", "", { silent = true },
                 "File Explorer", "file_explorer.delete", "Delete file or folder")
  mapkey_virtual("n", "<S-r>", "", { silent = true },
                 "File Explorer", "file_explorer.refresh", "Refresh")
end

return M
