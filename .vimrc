syntax on
set number relativenumber
set scrolloff=10
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=/.vim/undodir
set undofile
set incsearch
set nohlsearch
set hidden

set signcolumn=yes
set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=lightgrey

let mapleader = " "
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <Leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 40<CR>
nnoremap <Leader>; :
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
