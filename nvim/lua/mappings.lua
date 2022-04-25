local mapkey = require("utils").mapkey

-- Save using <Ctrl + S>
mapkey("n", "<C-s>", ":w<CR>")
mapkey("i", "<C-s>", "<Esc>:w<CR>a")

-- Turn off recording feature
mapkey("", "q", "<Nop>")

-- Enter normal mode using jj
mapkey("i", "jj", "<Esc>")

-- Hit <Esc> twice to clear search highlighting
mapkey("n", "<Esc>", ":noh<CR><Esc>", { silent = true })
