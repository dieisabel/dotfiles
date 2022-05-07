local M = {}

local mapkey = require("utils").mapkey
local delete_buffer = require("scripts.bufdel").delete_buffer

M.configuration = {
  options = {
    mode = "buffers",
    numbers = "none",
    close_command = delete_buffer,
    right_mouse_command = delete_buffer,
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
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
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
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
    persist_buffer_sort = true,
    separator_style = { "", "" },
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = function()
          return vim.fn.getcwd()
        end,
        text_align = "left",
        highlight = "Directory"
      },
    },
  },
}

-- Switch between buffers using <Ctrl + Tab> and <Ctrl + Shift + Tab>
mapkey("n", "<C-Tab>", ":BufferLineCycleNext<CR>", { silent = true })
mapkey("n", "<C-S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

-- Delete buffer using <Ctrl + w>
mapkey("n", "<C-w>", delete_buffer, { silent = true })

return M
