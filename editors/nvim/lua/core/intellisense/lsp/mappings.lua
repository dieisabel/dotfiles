local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<S-k>", ":lua vim.lsp.buf.hover()<CR>", { silent = true },
         "LSP", "lsp.hover", "Display hover information about symbol")
  mapkey("n", "<S-e>", ":lua vim.lsp.buf.rename()<CR>", { silent = true },
         "LSP", "lsp.rename", "Rename symbol")
  mapkey("n", "<S-r>", ":lua vim.lsp.buf.references()<CR>", { silent = true },
         "LSP", "lsp.references", "Show references of symbol")
  mapkey("n", "<S-d>", ":lua vim.lsp.buf.definition()<CR>", { silent = true },
         "LSP", "lsp.definition", "Go to symbol definition")
end

return M
