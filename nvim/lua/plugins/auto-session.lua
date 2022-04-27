local auto_session = require("auto-session")

vim.opt.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

auto_session.setup({
  auto_session_allowed_dirs = {
    "~/projects",
    "~/dotfiles",
    "~/.config/nvim",
  },
  auto_save_enabled = true,
})
