local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<Esc>", ":noh<CR><Esc>", { silent = true },
         "Search", "search.clear", "Clear search highlighting")
end

return M
