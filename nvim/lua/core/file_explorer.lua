local M = {}

local global = vim.g

global.nvim_tree_git_hl = 1
global.nvim_tree_icons = {
  default = "",
  symlink = "*",
  git = {
    unstaged = "✗",
    staged = "✓",
    untracked = "*",
    renamed = "➜",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    arrow_open = "",
    arrow_closed = ">",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
  },
}
global.nvim_tree_add_trailing = 1

M.configuration = {
  auto_reload_on_write = true,
  disable_netrw = true,
  hijack_cursor = false,
  hijack_netrw = true,
  open_on_setup = true,
  view = {
    hide_root_folder = true,
    width = 50,
    side = "right",
    mappings = {
      list = {
        { key = "l", action = "edit" },
        { key = "a", action = "create" },
      },
    },
  },
  git = {
    enable = true,
    ignore = false,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    custom = {
      "^__pycache__",
      "^.mypy_cache",
      "^.venv",
      "^venv",
      "^.coverage",
      "^.git",
    },
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
  },
  update_focused_file = {
    enable = true,
  },
}

return M
