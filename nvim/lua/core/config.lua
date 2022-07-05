local M = {}

local mapkey = require("utils").mapkey

M.keymaps = {}

mapkey("n", "<C-S-k>", ":Telescope mapper<CR>", { silent = true },
       "Config", "config.keymaps.toggle", "Show keymaps")

return M
