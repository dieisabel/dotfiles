local packer_bootstrap = require("utils").ensure_packer_is_installed()

local packer = require("packer").startup(function(use)

  use {
    "Shatur/neovim-ayu",
    as = "theme",
  }

  use {
    "kyazdani42/nvim-web-devicons",
    as = "icons",
  }

  use {
    "nvim-lua/plenary.nvim",
    as = "core-utils",
  }

  use {
    "akinsho/bufferline.nvim",
    as = "tabline",
    config = function()
      require("bufferline").setup(
        require("core.tabline").configuration
      )
    end,
  }

  use {
    "kyazdani42/nvim-tree.lua",
    as = "file_explorer",
    config = function()
      require("nvim-tree").setup(
        require("core.file_explorer").configuration
      )
    end,
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    as = "syntax_highlighting",
    config = function()
      require("nvim-treesitter.configs").setup(
        require("core.syntax_highlighting").configuration
      )
    end,
    run = ":TSUpdate",
  }

  use {
    "lewis6991/gitsigns.nvim",
    as = "git-gutter",
    config = function()
      require("gitsigns").setup(
        require("core.git").configuration_gutter
      )
    end,
  }

  use {
    "terrortylor/nvim-comment",
    as = "comments",
    config = function()
      require("nvim_comment").setup(
        require("core.comments").configuration
      )
    end,
  }

  use {
    "rmagatti/auto-session",
    as = "sessions",
    config = function()
      require("auto-session").setup(
        require("core.sessions").configuration
      )
    end,
  }

  use {
    "nvim-telescope/telescope.nvim",
    as = "finder",
    config = function()
      require("telescope").setup(
        require("core.finder").configuration
      )
    end,
    requires = {
      "BurntSushi/ripgrep",
    },
  }

  use {
    "akinsho/toggleterm.nvim",
    as = "terminal",
    config = function()
      require("toggleterm").setup(
        require("core.terminal").configuration
      )
    end,
  }

  use {
    "nvim-lualine/lualine.nvim",
    as = "statusline",
    config = function()
      require("lualine").setup(
        require("core.statusline").configuration
      )
    end,
  }

  if packer_bootstrap then
    require("packer").sync()
  end
end)

return packer
