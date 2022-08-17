local M = {}

M.mappings = {
  goto_location = "l",
  close = {
    "<Esc>",
    "q",
  },
  rename_symbol = "",
  toggle_preview = "",
  hover_symbol = "K",
}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey
  local mapkey_virtual = require("utils.mappings").mapkey

  mapkey("n", "<C-S-o>", ":SymbolsOutline<CR>", { silent = true },
         "LSP", "lsp.outline.toggle", "Toggle outline")
  mapkey_virtual("n", "<l>", "", { silent = true },
                 "LSP", "lsp.outline.goto", "Go to symbol location in outline")
  mapkey_virtual("n", "<Esc> <q>", "", { silent = true },
                 "LSP", "lsp.outline.close", "Close outline")
  mapkey_virtual("n", "<K>", "", { silent = true },
                 "LSP", "lsp.outline.preview", "Toggle preview in outline")
end

return M
