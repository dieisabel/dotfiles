local mapkey = require("utils").mapkey

-- Save using <Ctrl + S>
mapkey("n", "<C-s>", ":w<CR>")
mapkey("i", "<C-s>", "<Esc>:w<CR>a")

-- Turn off recording feature
mapkey("", "q", "<Nop>")

-- Enter normal mode using jj
mapkey("i", "jj", "<Esc>")

-- Hit <Esc> to clear search highlighting
mapkey("n", "<Esc>", ":noh<CR><Esc>", { silent = true })

-- Switch between windows using <Alt + Vim keys>
mapkey("n", "<A-l>", ":wincmd l<CR>", { silent = true })
mapkey("n", "<A-h>", ":wincmd h<CR>", { silent = true })
mapkey("n", "<A-k>", ":wincmd k<CR>", { silent = true })
mapkey("n", "<A-j>", ":wincmd j<CR>", { silent = true })
