local M = {}

local set = vim.opt
set.syntax = "on"

M.config = {
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "css",
    "dockerfile",
    "html",
    "javascript",
    "json",
    "lua",
    "make",
    "markdown",
    "python",
    "rst",
    "rust",
    "scss",
    "toml",
    "vim",
    "yaml",
  },
  highlight = {
    enable = true,
  },
}

return M
