local packer_bootstrap = require("utils").ensure_packer_is_installed()

local packer = require("packer").startup(function(use)

  -- Colorschema
  use "ayu-theme/ayu-vim"

  -- Bufferline
  use "akinsho/bufferline.nvim"

  -- File explorer
  use "kyazdani42/nvim-tree.lua"

  -- Git gutter
  use "lewis6991/gitsigns.nvim"

  -- Better syntax highlighting
  use "nvim-treesitter/nvim-treesitter"

  -- Tool to comment/uncomment lines
  use "terrortylor/nvim-comment"
  
  -- Common configurations for neovim lsp client
  use "neovim/nvim-lspconfig"

  -- Automated session manager
  use "rmagatti/auto-session"

  -- Snippet engine
  use "L3MON4D3/LuaSnip"

  -- Completion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"

end)

require("plugins.bufferline")
require("plugins.nvim-tree")
require("plugins.gitsigns")
require("plugins.nvim-treesitter")
require("plugins.nvim-comment")
require("plugins.luasnip")
require("plugins.auto-session")
require("plugins.lsp")
require("plugins.nvim-cmp")
require("plugins.statusline")

return packer
