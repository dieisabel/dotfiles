local M = {
  bufferline = {
    indicator = "|",
    close = "X",
    modified = "M",
    left_trunc_marker = "<",
    right_trunc_marker = ">",
  },

  nvim_tree = {
    default = "",
    symlink = "*",
    git = {
      unstaged = "M",
      staged = "A",
      untracked = "*",
      renamed = "R",
      deleted = "D",
      ignored = "#"
    },
    folder = {
      arrow_open = "/",
      arrow_closed = ">",
      default = "",
      open = "",
      empty = "#",
      empty_open = "#",
    },
    diagnostics = {
      hint = "H",
      info = "I",
      warning = "W",
      error = "E",
    },
  },
}

return M
