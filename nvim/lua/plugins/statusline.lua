-- Custom statusline
-- To create this I used:
-- https://nuxsh.is-a.dev/blog/custom-nvim-statusline.html

local set = vim.opt
local fn = vim.fn
local api = vim.api

Statusline = {}

set.showmode = false

local modes = {
  ["n"] = "NORMAL",
  ["no"] = "NORMAL",
  ["v"] = "VISUAL",
  ["V"] = "VISUAL LINE",
  [""] = "VISUAL BLOCK",
  ["s"] = "SELECT",
  ["S"] = "SELECT LINE",
  [""] = "SELECT BLOCK",
  ["i"] = "INSERT",
  ["ic"] = "INSERT",
  ["R"] = "REPLACE",
  ["Rv"] = "VISUAL REPLACE",
  ["c"] = "COMMAND",
  ["cv"] = "VIM EX",
  ["ce"] = "EX",
  ["r"] = "PROMPT",
  ["rm"] = "MOAR",
  ["r?"] = "CONFIRM",
  ["!"] = "SHELL",
  ["t"] = "TERMINAL",
}

local function mode()
  local current_mode = api.nvim_get_mode().mode
  return string.format(" %s ", modes[current_mode]):upper()
end

local function update_mode_colors()
  local current_mode = api.nvim_get_mode().mode
  local mode_color = "%#StatusLineAccent#"
  if current_mode == "n" then
      mode_color = "%#GitGutterAdd#"
  elseif current_mode == "i" or current_mode == "ic" then
      mode_color = "%#GitGutterChange#"
  elseif current_mode == "v" or current_mode == "V" or current_mode == "" then
      mode_color = "%#GitGutterChangeDelete#"
  elseif current_mode == "R" then
      mode_color = "%#StatuslineReplaceAccent#"
  elseif current_mode == "c" then
      mode_color = "%#GitGutterDelete#"
  elseif current_mode == "t" then
      mode_color = "%#StatuslineTerminalAccent#"
  end
  return mode_color
end

local function filepath()
  local filepath = fn.fnamemodify(fn.expand("%"), ":~:.:h")
  if filepath == "" or filepath == "." then
    return " "
  end
  return string.format(" %%<%s/", filepath)
end

local function filename()
  local filename = fn.expand "%:t"
  if filename == "" then
      return ""
  end
  return filename .. " "
end

local function lineinfo()
  if vim.bo.filetype == "alpha" then
    return ""
  end
  return " %l:%c "
end

local function filetype()
  return string.format(" %s ", vim.bo.filetype):upper()
end

local function git_branch()
  local gitinfo = vim.b.gitsigns_status_dict
  if not gitinfo or gitinfo.head == "" then
    return ""
  end
  return table.concat({
    "| ",
    gitinfo.head,
  })
end

function Statusline.active()
  return table.concat({
    "%#StatusLine#",
    update_mode_colors(),
    mode(),
    "|",
    "%#Directory#",
    filepath(),
    filename(),
    git_branch(),
    "%=%#StatusLineNC#",
    filetype(),
    "|",
    lineinfo(),
  })
end

function Statusline.inactive()
  return ""
end

api.nvim_exec([[
  augroup Statusline
    au!
    au FileType NvimTree setlocal statusline=%!v:lua.Statusline.inactive()
    au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
    au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  augroup END
]], false)
