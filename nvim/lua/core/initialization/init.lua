local M = {}

function M.initialize()
  local packer_bootstrap = require("utils.packer").ensure_packer_is_installed()

  require("packer").startup(function(use)
    require("core.initialization.plugins").install_plugins(use)
    if packer_bootstrap then
      require("packer").sync()
    end
  end)

  require("core.initialization.modules").configure_modules()
end

return M
