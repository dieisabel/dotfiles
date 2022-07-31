local M = {}

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
}
M.config = vim.tbl_deep_extend(
  "keep", M.config, require("ui.intellisense.completion.config").config
)

return M
