local M = {}

local set = vim.opt
set.lazyredraw = true

function M.populate_impatient()
  local fn = vim.fn

  local chunks_path = fn.stdpath("cache") .. "/luacache_chunks"
  local modpaths = fn.stdpath("cache") .. "/luacache_modpaths"

  _G.__luacache_config = {
    chunks = {
      enable = true,
      path = chunks_path,
    },
    modpaths = {
      enable = true,
      path = modpaths,
    }
  }
end

return M
