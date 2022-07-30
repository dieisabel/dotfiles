local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<C-S-k>", ":Telescope mapper<CR>", { silent = true },
         "Config", "config.keymaps.toggle", "Show keymaps")
end

return M
