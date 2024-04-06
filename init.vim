set number
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable
set hidden

autocmd VimEnter * NERDTree
let g:ycm_auto_trigger = 1
syntax enable
let g:rainbow_active = 1

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

