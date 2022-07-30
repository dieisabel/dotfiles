local M = {}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey

  mapkey("n", "<C-Tab>", ":BufferLineCycleNext<CR>", { silent = true },
         "Tabline", "tabline.switch.next", "Switch to next buffer")
  mapkey("n", "<C-S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true },
         "Tabline", "tabline.switch.previous", "Switch to previous buffer")
  mapkey("n", "<C-w>", ":lua require('scripts.bufdel').delete_buffer()<CR>", { silent = true },
         "Tabline", "tabline.delete", "Delete current buffer")
end

return M
