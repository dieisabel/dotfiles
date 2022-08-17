local M = {}

local config = require("core.windows.config").config

-- function M.vertical_split()
--   if not vim.tbl_contains(config.excluded_filetypes, string.lower(vim.bo.filetype))
--   then
--     vim.cmd("vsplit")
--   end
-- end

-- function M.horizontal_split()
--   if not vim.tbl_contains(config.excluded_filetypes, string.lower(vim.bo.filetype))
--   then
--     vim.cmd("split")
--   end
-- end

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  -- mapkey("n", "<C-S-v>", ":lua require('core.splits.mappings').vertical_split()<CR>",
  --        { silent = true },
  --        "Splits", "splits.vertical", "Make vertical split")
  -- mapkey("n", "<C-S-h>", ":lua require('core.splits.mappings').horizontal_split()<CR>",
  --        { silent = true },
  --        "Splits", "splits.horizontal", "Make horizontal split")

  mapkey("n", "<A-l>", ":wincmd l<CR>", { silent = true },
         "Windows", "windows.move_to_right", "Move to right window")
  mapkey("n", "<A-h>", ":wincmd h<CR>", { silent = true },
         "Windows", "windows.move_to_left", "Move to left window")
  mapkey("n", "<A-k>", ":wincmd k<CR>", { silent = true },
         "Windows", "windows.move_to_up", "Move to upper window")
  mapkey("n", "<A-j>", ":wincmd j<CR>", { silent = true },
         "Windows", "windows.move_to_down", "Move to down window")

  mapkey("n", "<C-Left>", ":vertical resize -3<CR>", { silent = true },
         "Windows", "windows.resize_left", "Resize window to left")
  mapkey("n", "<C-Right>", ":vertical resize +3<CR>", { silent = true },
         "Windows", "windows.resize_right", "Resize window to right")
  mapkey("n", "<C-Up>", ":resize +3<CR>", { silent = true },
         "Windows", "windows.resize_up", "Resize window to up")
  mapkey("n", "<C-Down>", ":resize -3<CR>", { silent = true },
         "Windows", "windows.resize_down", "Resize window to down")
end

return M
