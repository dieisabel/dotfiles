local M = {}

if not require("utils.modules").check_if_module_is_installed("nvim_comment")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.comments.config").config

    require("nvim_comment").setup(config)
    require("core.comments.mappings").apply_mappings()
  end
end

return M
