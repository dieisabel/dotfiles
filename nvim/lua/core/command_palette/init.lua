local M = {}

if not require("utils.modules").check_if_module_is_installed("command_palette")
then
  function M.configure() end
else
  function M.configure()
    require("core.command_palette.mappings").apply_mappings()
  end
end

return M
