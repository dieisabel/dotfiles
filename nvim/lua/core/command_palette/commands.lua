local M = {}

M.commands = {
  { "Find",
    { "Telescope", ":Telescope" },
    { "String", ":lua require('telescope.builtin').grep_string()" },
    { "File", ":lua require('telescope.builtin').find_files()" },
    { "Symbols", ":Telescope treesitter" },
  },
}

return M
