local nvim_comment = require("nvim_comment")
local mapkey = require("utils").mapkey

nvim_comment.setup({
  comment_empty = false,
  create_mappings = false,
})

-- Comment/uncomment using <Ctrl + q>
mapkey("n", "<C-q>", ":CommentToggle<CR>", { silent = true })
mapkey("v", "<C-q>", ":CommentToggle<CR>", { silent = true })
