" Plugins

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'liuchengxu/space-vim-theme'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ziglang/zig.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-autoformat/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'

call plug#end()

" Binds

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

nmap <silent> <c-e> <Plug>(ale_next_wrap)

nmap <c-s-i> :Autoformat<cr>
nnoremap <c-g> :NERDTreeFocus<cr>
nnoremap <c-t> :NERDTreeToggle<cr>
nnoremap <c-j> :bp<cr>
nnoremap <c-k> :bn<cr>

execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xright>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"

nnoremap ! :source %<cr>

" General

set nobackup
set nowritebackup
set noswapfile
set wildmode=list:longest,full
set background=dark
set nocompatible
set clipboard=unnamed,unnamedplus
set ttimeout
set ttimeoutlen=50
set nrformats-=octal
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

" Plugin settings

set omnifunc=ale#completion#OmniFunc
let g:airline#extensions#tabline#enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:prettier#autoformat_require_pragma = 0
