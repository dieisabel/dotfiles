local M = {}

M.config = {
  options = {
    icons_enabled = false,
    theme = "ayu_dark",
    section_separators = { left = "", right = "" },
    component_separators = { left = "", right = "" },
    disabled_filetypes = {
      "NvimTree",
      "toggleterm",
      "help",
      "Trouble",
      "Outline",
    },
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {"filename"},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}

return M
