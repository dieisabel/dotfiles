local M = {}

local mapkey = require("utils").mapkey

M.configuration = {
  comment_empty = false,
  create_mappings = false,
}

-- Comment/uncomment using <Ctrl + />
mapkey("n", "<C-/>", ":CommentToggle<CR>", { silent = true })
mapkey("v", "<C-/>", ":CommentToggle<CR>", { silent = true })

return M
