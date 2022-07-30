local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<C-/>", ":CommentToggle<CR>", { silent = true },
         "Comments", "comments.toggle.normal", "Toggle/Untoggle comments in normal mode")
  mapkey("v", "<C-/>", ":CommentToggle<CR>", { silent = true },
         "Comments", "comments.toggle.visual", "Toggle/Untoggle comments in visual mode")
end

return M
