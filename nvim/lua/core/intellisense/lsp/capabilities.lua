local M = {}

if require("utils.modules").check_if_module_is_installed("cmp_nvim_lsp") then
  M.capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  )
else
  M.capabilities = nil
end

return M
