local M = {}

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(
    0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local cmp = require("cmp")
local luasnip = require("luasnip")

M.mappings = {
  ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
  ["<CR>"] = cmp.mapping.confirm({ select = true }),
  ["<Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    elseif luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
    elseif has_words_before() then
      cmp.complete()
    else
      fallback()
    end
  end, { "i", "s" }),
  ["<S-Tab>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    elseif luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
  end, { "i", "s" }),
  ["<S-e>"] = cmp.mapping({
    i = cmp.mapping.abort(),
    c = cmp.mapping.close(),
  }),
  ["<Esc>"] = cmp.mapping({
    i = cmp.mapping.abort(),
    c = cmp.mapping.close(),
  }),
}

function M.apply_mappings()
  local mapkey = require("utils.mappings").mapkey_virtual

  mapkey("n", "<CR>", "", { silent = true },
         "Completion", "completion.confirm", "Confirm completion selection")
  mapkey("n", "<S-Tab> <Esc>", "", { silent = true },
         "Completion", "completion.select_prev", "Select previous or jump in snippet")
  mapkey("n", "<Tab>", "", { silent = true },
         "Completion", "completion.select_next", "Select next or expand snippet")
  mapkey("n", "<S-e>", "", { silent = true },
         "Completion", "completion.exit", "Exit selection")
  mapkey("n", "<C-Space>", "", { silent = true },
         "Completion", "completion.toggle", "Toggle completion")
end

return M
