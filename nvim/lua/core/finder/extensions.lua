local M = {}

local extensions = {
  "command_palette",
  "mapper",
  "notify",
}

function M.load_extensions(telescope)
  for i = 1, #extensions do
    telescope.load_extension(extensions[i])
  end
end

return M
