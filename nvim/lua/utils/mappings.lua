local M = {}

function M.mapkey(mode, lhs, rhs, opts, cathegory, unique_identifier, description)
  local mapper = require("nvim-mapper")
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  mapper.map(mode, lhs, rhs, options, cathegory, unique_identifier, description)
end

function M.mapkey_virtual(mode, lhs, rhs, opts, cathegory, unique_identifier, description)
  local mapper = require("nvim-mapper")
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  mapper.map_virtual(mode, lhs, rhs, options, cathegory, unique_identifier, description)
end

return M
