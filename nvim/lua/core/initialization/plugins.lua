local M = {}

local plugins = {
  {
    "lewis6991/impatient.nvim",
    as = "optimizations-startup",
  },
  {
    "lazytanuki/nvim-mapper",
    as = "config-keymaps",
    before = "telescope.nvim",
  },
  {
    "Shatur/neovim-ayu",
    as = "theme",
  },
  {
    "rcarriga/nvim-notify",
    as = "notifications",
    before = "telescope.nvim",
  },
  {
    "kyazdani42/nvim-web-devicons",
    as = "icons",
  },
  {
    "nvim-lua/plenary.nvim",
    as = "core-utils",
  },
  {
    "akinsho/bufferline.nvim",
    as = "tabline",
  },
  {
    "kyazdani42/nvim-tree.lua",
    as = "file_explorer",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    as = "syntax_highlighting",
    run = ":TSUpdate",
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    as = "treesitter-context",
  },
  {
    "lewis6991/gitsigns.nvim",
    as = "git-gutter",
  },
  {
    "rmagatti/auto-session",
    as = "sessions",
  },
  {
    "terrortylor/nvim-comment",
    as = "comments",
  },
  {
    "nvim-telescope/telescope.nvim",
    as = "finder",
  },
  {
    "LinArcX/telescope-command-palette.nvim",
    as = "command_palette",
    before = "telescope.nvim",
  },
  {
    "akinsho/toggleterm.nvim",
    as = "terminal",
  },
  {
    "nvim-lualine/lualine.nvim",
    as = "statusline",
  },
  {
    "gpanders/editorconfig.nvim",
    as = "integrations-editorconfig",
  },
  -- {
  --   "dstein64/nvim-scrollview",
  --   as = "scrollbar",
  --   config = function()
  --     require("scrollview").setup({
  --       excluded_filetypes = {
  --         "NvimTree",
  --       },
  --       current_only = true,
  --       character = false,
  --     })
  --   end,
  -- },
  {
    "hrsh7th/nvim-cmp",
    as = "completion",
  },
  {
    "hrsh7th/cmp-path",
    as = "completion-path",
  },
  {
    "L3MON4D3/LuaSnip",
    as = "snippets",
  },
}

function M.install_plugins(use)
  for i = 1, #plugins do
    use(plugins[i])
  end
end

return M
