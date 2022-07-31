local M = {}

if not require("utils.modules").check_if_module_is_installed("nvim-treesitter")
then
  function M.configure() end
else
  function M.configure()
    local config = require("core.syntax_highlighting.config").config

    require("nvim-treesitter.configs").setup(config)
  end
end

return M
