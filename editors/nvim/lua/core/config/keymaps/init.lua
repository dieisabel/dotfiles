local M = {}

if not require("utils.modules").check_if_module_is_installed("nvim-mapper")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.config.keymaps.config").config

    require("nvim-mapper").setup(config)
    require("core.config.keymaps.mappings").apply_mappings()
    require("core.config.keymaps.commands").apply_commands()
  end
end

return M
