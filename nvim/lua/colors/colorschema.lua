local set = vim.opt

set.syntax = "on"
set.termguicolors = true

-- Colorschema
vim.g.ayucolor = "dark"
vim.cmd("colorscheme ayu")

-- Airline
vim.g.airline_theme = "ayu"
vim.g.airline_section_z = "%c"
vim.g.airline_symbols_ascii = 1
