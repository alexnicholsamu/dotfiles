
" Remap y/p to use system clipboard
nnoremap y "+y
vnoremap y "+y

set foldcolumn=1       " Adds padding to the left
set signcolumn=yes     " Always show the sign column (useful for git-gutter)
set number             " Show line numbers    
set scrolloff=5       " Keep 5 lines visible above/below the cursor
set sidescrolloff=5   " Keep 5 columns visible to the left/right of the cursor
set hlsearch          " Highlight search results
set incsearch         " Show results while typing search
set ignorecase        " Ignore case in search
set smartcase         " Override ignorecase if uppercase letters are used
set clipboard=unnamedplus
set wildmenu          " Enable command-line completion
set wildmode=longest:full,full

nnoremap <q> :set hlsearch!<CR>

" Vim-Plug Plugin Manager
call plug#begin('~/.vim/plugged')

" Syntax and Colors
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'github/copilot.vim'

" Git and Merge Tools
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'whiteinge/diffconflicts'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

" General Settings
syntax on
set background=dark
colorscheme gruvbox

" Git Keybindings
nmap <Leader>gs :Git<CR>       " Open Git status
nmap <Leader>gd :Gdiffsplit<CR> " Open Git diff split

" Autocommands
autocmd VimEnter * NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && &filetype == "nerdtree") | q | endif
