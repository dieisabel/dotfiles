local M = {}

if not require("utils.modules").check_if_module_is_installed("telescope")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.finder.config").config
    local telescope = require("telescope")

    telescope.setup(config)
    require("core.finder.extensions").load_extensions(telescope)
    require("core.finder.mappings").apply_mappings()
  end
end

return M
