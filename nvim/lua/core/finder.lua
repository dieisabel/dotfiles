local M = {}

local mapkey = require("utils").mapkey

M.configuration = {
  defaults = {
    initial_mode = "insert",
  },
}

-- Call Telescope using <Ctrl + Shift + F>
mapkey("n", "<C-S-f>", ":Telescope grep_string<CR>", { silent = true })

return M
