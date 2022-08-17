local M = {}

if not require("utils.modules").check_if_module_is_installed("nvim-tree")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.file_explorer.config").config

    require("nvim-tree").setup(config)
    require("core.file_explorer.mappings").apply_mappings()
    require("core.file_explorer.commands").apply_commands()
  end
end

return M
