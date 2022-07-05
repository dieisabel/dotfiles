local M = {}

local mapkey = require("utils").mapkey

M.configuration = {
  comment_empty = false,
  create_mappings = false,
}

mapkey("n", "<C-/>", ":CommentToggle<CR>", { silent = true },
       "Comments", "comments.toggle.normal", "Toggle/Untoggle comments in normal mode")
mapkey("v", "<C-/>", ":CommentToggle<CR>", { silent = true },
       "Comments", "comments.toggle.visual", "Toggle/Untoggle comments in visual mode")

return M
