local M = {}

M.commands = {
  { "Find",
    { "Telescope", ":Telescope" },
    { "String", ":lua require('telescope.builtin').live_grep()" },
    { "File", ":lua require('telescope.builtin').find_files()" },
  },
}

return M
