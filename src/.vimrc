
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'

Plug 'Chiel92/vim-autoformat'
Plug 'dense-analysis/ale'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sleuth'
Plug 'terryma/vim-multiple-cursors'

call plug#end()

set nowrap

colorscheme gruvbox

set ttymouse=xterm2
set mouse=a

set background=dark
