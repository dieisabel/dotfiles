local bufferline = require("bufferline")
local icons = require("colors.icons")
local mapkey = require("utils").mapkey
local bufdel = require("scripts.bufdel").delete_buffer

bufferline.setup({
  options = {
    always_show_bufferline = true,
    separator_style = { "|", "|" },
    
    indicator_icon = icons.bufferline.indicator,
    buffer_close_icon = icons.bufferline.close,
    close_icon = icons.bufferline.close,
    modified_icon = icons.bufferline.modified,
    left_trunc_marker = icons.bufferline.left_trunc_marker,
    right_trunc_marker = icons.bufferline.right_trunc_marker,

    offsets = {
      { filetype = "NvimTree", text = "File Explorer", text_align = "left" },
    },
  },
})

-- Switch between buffers using <Ctrl + h> and <Ctrl + l>
mapkey("n", "<C-h>", ":BufferLineCyclePrev<CR>", { silent = true })
mapkey("n", "<C-l>", ":BufferLineCycleNext<CR>", { silent = true })

-- Delete buffer using <Ctrl + w>
 mapkey("n", "<C-e>", bufdel, { silent = true })
