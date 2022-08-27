local M = {}

function M.on_attach(client, bufnr)
  require("core.intellisense.lsp.mappings").apply_mappings()
end

return M
