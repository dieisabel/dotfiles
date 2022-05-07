local M = {}

local set = vim.opt

set.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

M.configuration = {
  auto_session_allowed_dirs = {
    "~/projects/web/components",
    "~/dotfiles",
    "~/.config/nvim",
  },
  auto_save_enabled = true,
}

return M
