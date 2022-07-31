local M = {}

function M.load_options(options)
  for key, value in pairs(options) do
    vim.opt[key] = value
  end
end

return M
