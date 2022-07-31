local M = {}

local modules = {
  "optimizations",
  "file_explorer",
  "sessions",
  "tabline",
  "git",
  "terminal",
  "comments",
  "syntax_highlighting",
  "command_palette",
  "config",
  "search",
  "indentation",
  "finder",
  "intellisense",
}

function M.configure_modules()
  for i = 1, #modules do
    require("core." .. modules[i]).configure()
  end
end

return M
