local M = {}

function M.ensure_packer_is_installed()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    return fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
    })
  end
end

function M.mapkey(mode, lhs, rhs, opts, cathegory, unique_identifier, description)
  local mapper = require("nvim-mapper")
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  mapper.map(mode, lhs, rhs, options, cathegory, unique_identifier, description)
end

return M
