local M = {}

M.config = {
  view = {
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
