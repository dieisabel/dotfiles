local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<C-s>", ":w<CR>", { silent = true },
         "Saving", "saving.save", "Save")
  mapkey("i", "<C-s>", "<Esc>:w<CR>a", { silent = true },
         "Saving", "saving.insert_save", "Save")
end

return M
