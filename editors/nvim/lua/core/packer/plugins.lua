local M = {}

local plugins = {
  {
    "lewis6991/impatient.nvim",
  },
  {
    "lazytanuki/nvim-mapper",
  },
  {
    "Shatur/neovim-ayu",
  },
  {
    "rcarriga/nvim-notify",
  },
  {
    "kyazdani42/nvim-web-devicons",
  },
  {
    "nvim-lua/plenary.nvim",
  },
  {
    "akinsho/bufferline.nvim",
  },
  {
    "kyazdani42/nvim-tree.lua",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  },
  {
    "lewis6991/gitsigns.nvim",
  },
  {
    "rmagatti/auto-session",
  },
  {
    "terrortylor/nvim-comment",
  },
  {
    "nvim-telescope/telescope.nvim",
  },
  {
    "dieisabel/telescope-command-palette.nvim",
    branch = "dieisabel/custom",
  },
  {
    "nvim-lualine/lualine.nvim",
  },
  {
    "gpanders/editorconfig.nvim",
  },
  {
    "dstein64/nvim-scrollview",
  },
  {
    "hrsh7th/nvim-cmp",
  },
  {
    "hrsh7th/cmp-path",
  },
  {
    "L3MON4D3/LuaSnip",
  },
  {
    "neovim/nvim-lspconfig",
  },
  {
    "hrsh7th/cmp-nvim-lsp",
  },
  {
    "folke/trouble.nvim",
  },
  {
    "simrat39/symbols-outline.nvim",
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
  },
  {
    "klen/nvim-config-local",
  },
}

function M.install_plugins(use)
  for i = 1, #plugins do
    use(plugins[i])
  end
end

return M
