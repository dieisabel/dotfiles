local M = {}

if not require("utils.modules").check_if_module_is_installed("cmp")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.intellisense.completion.config").config

    require("cmp").setup(config)
    require("core.intellisense.completion.mappings").apply_mappings()
  end
end

return M
