local M = {
  bufferline = {
    indicator = "▎",
    close = "",
    modified = "●",
    left_trunc_marker = "<",
    right_trunc_marker = ">",
  },

  nvim_tree = {
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
    diagnostics = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
}

return M
