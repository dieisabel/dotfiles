local mapkey = require("utils").mapkey

mapkey("n", "<C-b>", ":lua require('dap').toggle_breakpoint()<CR>", { silent = true })
mapkey("n", "<C-d>", ":lua require('dap').continue()<CR>", { silent = true })

require("dap-python").setup("~/applications/debugpy/venv/bin/python")

require("dapui").setup({
  tray = {
    elements = {},
  },
})

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
