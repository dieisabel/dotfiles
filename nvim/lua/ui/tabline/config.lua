local M = {}

M.config = {
  options = {
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
    separator_style = { "", "" },
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
