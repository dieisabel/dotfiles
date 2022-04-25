local packer_bootstrap = require("utils").ensure_packer_is_installed()

local _ = require("packer").startup(function(use)

  -- Colorschema
  use "ayu-theme/ayu-vim"

  -- Bufferline
  use "akinsho/bufferline.nvim"

  -- File explorer
  use "kyazdani42/nvim-tree.lua"

  if packer_bootstrap then
    require('packer').sync()
  end
end)

require("plugins.bufferline")
require("plugins.nvim-tree")

return _
