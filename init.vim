call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/tokyonight.nvim'
call plug#end()

set number
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable
set hidden
let g:telescope_map_keys = 0
nnoremap <silent> <space><space> :Telescope find_files<CR>

nnoremap <silent> <space>g :Telescope live_grep<CR>

nnoremap <silent> <space><CR> :Telescope buffers<CR>

colorscheme tokyonight

lua << EOF
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            "build/", ".git/", ".cache", "%.o", "%.a", "%.out", "%.class",
            "%.pdf", "%.mkv", "%.mp4", "%.zip"
        }
    }
}
EOF


syntax enable
let g:rainbow_active = 1
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


