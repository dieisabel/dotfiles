local M = {}

if not require("utils.modules").check_if_module_is_installed("impatient")
then
  function M.configure() end
else
  function M.configure()
    require("core.optimizations.startup").populate_impatient()
    require("impatient")
  end
end

return M
