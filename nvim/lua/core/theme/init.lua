local M = {}

if not require("utils.modules").check_if_module_is_installed("ayu")
then
  function M.configure() end
else
  function M.configure()
    vim.opt.termguicolors = true
    vim.cmd([[colorscheme ayu-dark]])
    require("core.theme.commands").apply_commands()
  end
end

return M
