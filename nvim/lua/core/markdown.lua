local M = {}

local global = vim.g
local mapkey = require("utils").mapkey

global.glow_style = "dark"
global.glow_use_pager = true

-- Preview markdown file using <Ctrl + Shift + P>
mapkey("n", "<C-S-p>", ":Glow<CR>", { silent = true })

return M
