local M = {}

local modules = {
  "optimizations",
  "file_explorer",
  "sessions",
  "statusline",
  "tabline",
  "git",
  "terminal",
  "comments",
  "syntax_highlighting",
  "finder",
  "command_palette",
  "notifications",
  "config",
}

function M.configure_modules()
  for i = 1, #modules do
    require("core." .. modules[i]).configure()
  end
end

return M
