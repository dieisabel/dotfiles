local M = {}

function M.install()
  local packer_bootstrap = require("utils.packer").ensure_packer_is_installed()

  require("packer").startup(function(use)
    require("core.packer.plugins").install_plugins(use)
    if packer_bootstrap then
      require("packer").sync()
    end
  end)
end

return M
