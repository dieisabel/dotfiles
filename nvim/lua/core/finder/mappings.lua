local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<C-S-f>", ":Telescope grep_string<CR>", { silent = true },
         "Finder", "finder.toggle", "Toggle finder")
end

return M
