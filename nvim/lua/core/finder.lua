local M = {}

local telescope = require("telescope")
local command_palette = require("core.command_palette")

local mapkey = require("utils").mapkey

telescope.setup({
  defaults = {
    initial_mode = "insert",
  },
  extensions = {
    command_palette = command_palette.commands,
  },
})

telescope.load_extension("command_palette")
telescope.load_extension("mapper")

mapkey("n", "<C-S-f>", ":Telescope grep_string<CR>", { silent = true },
       "Finder", "finder.toggle", "Toggle finder")

return M
