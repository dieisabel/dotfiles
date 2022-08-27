local M = {}

M.mappings = {
  jump = {
    "l",
  },
}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey
  local mapkey_virtual = require("utils.mappings").mapkey_virtual

  mapkey("n", "<C-S-m>", ":TroubleToggle<CR>", { silent = true },
         "LSP", "lsp.list.toggle", "Toggle LSP list")
  mapkey_virtual("n", "<l>", "", { silent = true },
                 "LSP", "lsp.list.toggle_fold", "Toggle/untoggle fold in list")
end

return M
