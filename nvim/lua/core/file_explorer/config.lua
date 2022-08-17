local M = {}

M.config = {
  auto_reload_on_write = true,
  disable_netrw = true,
  hijack_cursor = false,
  hijack_netrw = true,
  open_on_setup = false,
  git = {
    enable = false,
    ignore = true,
  },
  diagnostics = {
    enable = true,
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
      "^.zcompdump",
    },
  },
  update_focused_file = {
    enable = true,
  },
  view = {
    mappings = {
      list = {
        { key = "l", action = "edit" },
        { key = "a", action = "create" },
      },
    },
    hide_root_folder = true,
    width = 50,
    side = "right",
  },
  renderer = {
    add_trailing = false,
    indent_markers = {
      enable = false,
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
    }
  },
}

return M
