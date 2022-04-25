local nvim_tree = require("nvim-tree")
local global = vim.g

global.nvim_tree_icons = require("colors.icons").nvim_tree
global.nvim_tree_add_trailing = 1

nvim_tree.setup({
  disable_netrw = true,
  open_on_setup = true,
  open_on_setup_file = true,
  view = {
    width = 45,
    side = "right",
    mappings = {
      list = {
        { key = "l", action = "edit" },
	{ key = "a", action = "create" },
      },
    },
  },
})
