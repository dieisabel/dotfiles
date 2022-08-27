local M = {}

function M.configure()
  require("core.intellisense.lsp.servers").configure()
  require("core.intellisense.lsp.null_ls").configure()
  require("core.intellisense.lsp.list").configure()
  require("core.intellisense.lsp.outline").configure()
  require("core.intellisense.lsp.commands").apply_commands()
end

return M
