call plug#begin('~/.local/share/nvim/plugged') 
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'fatih/molokai'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
call plug#end()

"=====================================================
"===================== SETTINGS ======================

set encoding=utf-8           " Set default encoding to UTF-8
set mouse=a                  " Enable mouse mode
set number                   " Show line numbers
set showcmd                  " Show command typing
set splitright               " Split vertical windows right to the current windows
set splitbelow               " Split horizontal windows below to the current windows
set autowrite                " Automatically save before :next, :make etc.
syntax on                    " Syntax highlighting
set ruler                    " Alway show cursor
set updatetime=500
set noswapfile               " disable swap files
let g:go_highlight_types = 1

" color
syntax enable
set t_Co=256
set background=dark
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

"===================== MAPPINGS ======================

" ==================== NerdTree ====================
" For toggling
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1

" =================== vim-go ======================
let g:go_fmt_command = "goimports"
let g:go_def_mode = 'godef'
nmap <C-g> :GoDecls<cr>

" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <silent> <leader>q :q!<CR>
