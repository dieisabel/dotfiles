local M = {}

local global = vim.g

local mapkey = require("utils").mapkey

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
    enable = false,
  },
  filters = {
    dotfiles = false,
    custom = {
      "^__pycache__",
      "^.mypy_cache",
      "^.pytest_cache",
      "^.venv",
      "^venv",
      "^.coverage",
      "^.git",
      "^node_modules",
    },
  },
  renderer = {
    add_trailing = true,
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
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
      },
    },
  },
  update_focused_file = {
    enable = true,
  },
}

mapkey("n", "<C-S-e>", ":NvimTreeToggle<CR>", { silent = true },
       "File Explorer", "file_explorer.toggle", "Toggle file explorer")

return M
