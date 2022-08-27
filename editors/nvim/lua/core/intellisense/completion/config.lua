local M = {}

local icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

M.config = {
  enabled = function()
    -- Disable completion in comments
    local context = require "cmp.config.context"
    if vim.api.nvim_get_mode().mode == "c" then
      return true
    else
      return not context.in_treesitter_capture("comment")
        and not context.in_syntax_group("Comment")
    end
  end,
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  sources = require("core.intellisense.completion.sources").sources,
  mapping = require("core.intellisense.completion.mappings").mappings,
  formatting = {
    format = function(_, vim_item)
      vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
      return vim_item
    end
  },
}

return M
