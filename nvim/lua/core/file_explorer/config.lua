local M = {}

M.config = {
  auto_reload_on_write = true,
  disable_netrw = true,
  hijack_cursor = false,
  hijack_netrw = true,
  open_on_setup = false,
  view = {
    mappings = {
      list = {
        { key = "l", action = "edit" },
        { key = "a", action = "create" },
      },
    },
  },
  git = {
    enable = false,
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
  update_focused_file = {
    enable = false,
  },
}
M.config = vim.tbl_deep_extend(
  "keep", M.config, require("ui.file_explorer.config").config
)

return M
