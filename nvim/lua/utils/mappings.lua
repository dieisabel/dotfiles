local M = {}

local check_if_installed = require("utils.modules").check_if_module_is_installed

function M.mapkey(mode, lhs, rhs, opts, cathegory, unique_identifier, description)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  if check_if_installed("nvim-mapper") then
    require("nvim-mapper").map(
      mode, lhs, rhs, options, cathegory, unique_identifier, description
    )
  else
    vim.keymap.set(mode, lhs, rhs, options)
  end
end

function M.mapkey_virtual(mode, lhs, rhs, opts, cathegory, unique_identifier, description)
  if check_if_installed("nvim-mapper") then
    local options = { noremap = true }
    if opts then
      options = vim.tbl_extend("force", options, opts)
    end
    require("nvim-mapper").map_virtual(
      mode, lhs, rhs, options, cathegory, unique_identifier, description
    )
  end
end

return M
