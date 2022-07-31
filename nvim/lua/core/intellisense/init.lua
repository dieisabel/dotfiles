local M = {}

function M.configure()
  require("core.intellisense.lsp").configure()
  require("core.intellisense.completion").configure()
end

return M
