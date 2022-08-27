local M = {}

M.sources = {}

if require("utils.modules").check_if_module_is_installed("cmp_nvim_lsp") then
  table.insert(M.sources, { name = "nvim_lsp" })
end

if require("utils.modules").check_if_module_is_installed("cmp_path") then
  table.insert(M.sources, { name = "path" })
end

return M
