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
    "neovim/nvim-lspconfig",
    as = "lspconfig",
    config = function()
      require("core.lsp")
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
    "L3MON4D3/LuaSnip",
    as = "snippets",
    config = function()
      require("core.snippets")
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
    "hrsh7th/cmp-nvim-lsp",
    as = "completion-lsp",
  }

  use {
    "hrsh7th/cmp-buffer",
    as = "completion-tab",
  }

  use {
    "hrsh7th/cmp-path",
    as = "completion-path",
  }

  use {
    "saadparwaiz1/cmp_luasnip",
    as = "completion-snippets",
  }

  use {
    "hrsh7th/nvim-cmp",
    as = "completion",
    config = function()
      require("cmp").setup(
        require("core.completion").configuration
      )
    end,
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
    "mfussenegger/nvim-dap-python",
    as = "debugging-python",
  }

  use {
    "rcarriga/nvim-dap-ui",
    as = "debugging-ui",
  }

  use {
    "mfussenegger/nvim-dap",
    as = "debugging",
    config = function()
      require("core.debugging")
    end,
  }

  use {
    "ellisonleao/glow.nvim",
    as = "markdown-preview",
    config = function()
      require("core.markdown")
    end,
    branch = "main",
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
