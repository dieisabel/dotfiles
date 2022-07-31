local M = {}

function M.configure()
  require("core.intellisense.lsp.servers").configure()
  require("core.intellisense.lsp.list").configure()
end

return M
