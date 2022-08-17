local M = {}

local delete_buffer = require("scripts.bufdel").delete_buffer

M.config = {
  options = {
    mode = "buffers",
    close_command = delete_buffer,
    right_mouse_command = delete_buffer,
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    persist_buffer_sort = true,
    enforce_regular_tabs = false,
    numbers = "none",
    indicator_icon = "▎",
    buffer_close_icon = "",
    close_icon = "",
    modified_icon = "●",
    left_trunc_marker = "<",
    right_trunc_marker = ">",
    always_show_bufferline = true,
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 20,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " or "" )
        s = s .. n .. sym
      end
      return s
    end,
    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_buffer_default_icon = true,
    show_close_icon = false,
    show_tab_indicators = true,
    separator_style = {"", ""},
    always_show_bufferline = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = function()
          return "..."
        end,
        text_align = "left",
        highlight = "Directory"
      },
    },
  },
}

return M
