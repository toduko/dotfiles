inoremap <c-p> <esc>pa
cnoremap <c-p> <c-r>"

nnoremap vv ^vg_
nnoremap Y y$

nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

nnoremap zj mayyp`aj
nnoremap zk mayyP`ak

nnoremap <s-r> :set rnu!<cr>

nnoremap <silent> J 5j
nnoremap <silent> K 5k
xnoremap <silent> J 5j
xnoremap <silent> K 5k

nmap <c-s-i> :lua vim.lsp.buf.format()<cr>
nnoremap <c-g> :NvimTreeFocus<cr>
nnoremap <c-j> :bp<cr>
nnoremap <c-k> :bn<cr>

execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xright>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"

nnoremap ! :source %<cr>
