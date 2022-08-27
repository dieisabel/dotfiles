local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<C-j>", ":move .+1<CR>==", { silent = true },
         "Editor", "edior.move_line_down", "Move line down")
  mapkey("n", "<C-k>", ":move .-2<CR>==", { silent = true },
         "Editor", "edior.move_line_up", "Move line up")
  mapkey("v", "<C-j>", ":move '>+1<CR>gv=gv", { silent = true },
         "Editor", "edior.move_lines_down", "Move lines down")
  mapkey("v", "<C-k>", ":move '<-2<CR>gv=gv", { silent = true },
         "Editor", "edior.move_lines_up", "Move lines up")
end

return M
