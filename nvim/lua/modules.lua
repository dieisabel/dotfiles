local M = {}

M.modules = {
  core = {
    -- They must be at top!
    "optimizations",
    "finder",
    "command_palette",

    "theme",
    "editor",
    "file_explorer",
    "sessions",
    "tabline",
    "terminal",
    "comments",
    "syntax_highlighting",
    "statusline",
    "notifications",
    "scrollbar",
    "indentation",
    "search",
    "config",
    "saving",
    "windows",
    -- "intellisense.lsp",
    "intellisense.completion",
    "integrations.editorconfig",
    "integrations.git",
  },
}

return M
