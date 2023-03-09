" Plugins

call plug#begin('~/.vim/plugged')

Plug 'liuchengxu/space-vim-theme'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'preservim/nerdtree'
Plug 'ziglang/zig.vim'
Plug 'lervag/vimtex'

call plug#end()
call glaive#Install()
" Binds

noremap <C-w> :w<CR>
noremap <C-q> :q!<CR>
noremap <C-x> :wq<CR>
nmap <silent> <C-e> <Plug>(ale_next_wrap)
nmap <C-S-I> :FormatCode<CR>
nnoremap <C-g> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>
execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xRight>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"

" General

set background=dark
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set shiftwidth=2
set tabstop=2
set expandtab
set nowrap
colorscheme space_vim_theme
set omnifunc=ale#completion#OmniFunc
let g:airline#extensions#tabline#enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:prettier#autoformat_require_pragma = 0
Glaive codefmt clang_format_style='Google'
