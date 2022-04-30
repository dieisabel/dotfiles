local bufferline = require("bufferline")
local icons = require("colors.icons").bufferline
local mapkey = require("utils").mapkey
local bufdel = require("scripts.bufdel").delete_buffer

bufferline.setup({
  options = {
    always_show_bufferline = true,
    close_command = bufdel,
    tab_size = 20,

    indicator_icon = icons.indicator,
    buffer_close_icon = icons.close,
    close_icon = icons.close,
    modified_icon = icons.modified,
    left_trunc_marker = icons.left_trunc_marker,
    right_trunc_marker = icons.right_trunc_marker,

    diagnostics = "nvim_lsp",

    offsets = {
      { filetype = "NvimTree", text = "File Explorer", text_align = "left" },
    },
  },
})

-- Switch between buffers using <Ctrl + h> and <Ctrl + l>
mapkey("n", "<C-h>", ":BufferLineCyclePrev<CR>", { silent = true })
mapkey("n", "<C-l>", ":BufferLineCycleNext<CR>", { silent = true })

-- Delete buffer using <Ctrl + w>
 mapkey("n", "<C-w>", bufdel, { silent = true })
