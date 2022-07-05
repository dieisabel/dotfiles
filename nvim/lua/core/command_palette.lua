local M = {}

local mapkey = require("utils").mapkey

M.commands = {
  { "File Explorer",
    { "Toggle", ":NvimTreeToggle" },
  },
  { "Config",
    { "Show keymaps", ":Telescope mapper" },
    { "Reload", ":source $MYVIMRC" },
    { "Show all extensions", ":PackerStatus" },
  },
  { "Tabs",
    { "Close", ":lua require('scripts.bufdel').delete_buffer()" },
    { "Show all", ":Telescope buffers" },
  },
  { "Find",
    { "String", ":lua require('telescope.builtin').grep_string()" },
    { "File", ":lua require('telescope.builtin').find_files()" },
    { "Symbols", ":Telescope treesitter" },
  },
  { "Themes",
    { "Select", ":lua require('telescope.builtin').colorscheme()" },
  },
}

mapkey("n", "<C-S-p>", ":Telescope command_palette<CR>", { silent = true },
       "Command palette", "command_palette.toggle", "Toggle command palette")

return M
