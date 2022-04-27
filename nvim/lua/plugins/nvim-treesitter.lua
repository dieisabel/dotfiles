local treesitter = require("nvim-treesitter.configs")
local set = vim.opt

treesitter.setup({
  ensure_installed = {
    "c",
    "cpp",
    "python",
    "javascript",
    "typescript",
    "html",
    "css",
    "bash",
    "vim",
    "lua",
    "yaml",
    "toml",
    "make",
    "dockerfile",
  },
  highlight = {
    enable = true,
  },
})
