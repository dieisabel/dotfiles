local M = {}

function M.initialize()
  local modules = require("modules").modules.core

  require("core.packer").install()
  require("utils.modules").configure_modules(modules, "core")
end

return M
