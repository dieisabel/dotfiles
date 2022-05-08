" Save using <Ctrl + S>
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Enter normal mode using jj
inoremap jj <Esc>

" Hit <Esc> to clear search highlighting
nnoremap <silent> <Esc> :noh<CR><Esc>

" Switch between windows using <Alt + Vim keys>
nnoremap <silent> <A-l> :wincmd l<CR>
nnoremap <silent> <A-h> :wincmd h<CR>
nnoremap <silent> <A-k> :wincmd k<CR>
nnoremap <silent> <A-j> :wincmd j<CR>
