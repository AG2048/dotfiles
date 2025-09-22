" ~/.vimrc - Vim configuration file
" Basic vim settings for improved usability and development

" Disable vi compatibility (emable full vim features)
set nocompatible

" File type detection and plugin loading
filetype on
filetype plugin on
filetype indent on

" General settings
set encoding=utf-8
set fileencoding=utf-8
set number                    " Show line numbers
set relativenumber           " Show relative line numbers
set cursorline              " Highlight current line
set wrap                    " Enable line wrapping
set scrolloff=10            " Lines of context around cursor
set sidescrolloff=5         " Columns of context around cursor

" Search settings
set hlsearch                " Highlight search results
set incsearch               " Incremental search
set ignorecase              " Case insensitive searching
set smartcase               " Override ignorecase if uppercase used

" Indentation and formatting
set autoindent              " Copy indent from current line
set smartindent             " Smart auto-indenting
set expandtab               " Use spaces instead of tabs
set tabstop=4               " Number of spaces per tab
set shiftwidth=4            " Number of spaces for autoindent
set softtabstop=4           " Number of spaces when editing

" UI improvements
set showmatch               " Show matching brackets
set wildmenu                " Enhanced command completion
set wildmode=list:longest   " Command completion mode
set laststatus=2            " Always show status line
set ruler                   " Show cursor position
set showcmd                 " Show command in status line
set title                   " Set terminal title

" Editor behavior
set backspace=indent,eol,start  " Allow backspace over everything
set mouse=a                 " Enable mouse support
set clipboard=unnamedplus   " Use system clipboard
set autoread                " Auto reload files changed outside vim
set confirm                 " Confirm before closing unsaved files

" Performance improvements
set lazyredraw              " Don't redraw during macros
set ttyfast                 " Fast terminal connection

" Backup and swap files
set nobackup                " Don't create backup files
set nowritebackup           " Don't create backup before overwriting
set noswapfile              " Don't create swap files

" Persistent undo
if has('persistent_undo')
    set undodir=~/.vim/undo
    set undofile
    " Create undo directory if it doesn't exist
    if !isdirectory(expand('~/.vim/undo'))
        call mkdir(expand('~/.vim/undo'), 'p')
    endif
endif

" Color scheme and syntax
syntax enable               " Enable syntax highlighting
set background=dark         " Use dark background
if has('gui_running')
    set guifont=Monaco:h12
endif

" Key mappings
let mapleader = " "         " Set leader key to space

" Quick save and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" Clear search highlights
nnoremap <leader>/ :nohlsearch<CR>

" Better navigation
nnoremap j gj
nnoremap k gk
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tab navigation
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>th :tabprev<CR>
nnoremap <leader>tl :tabnext<CR>

" Buffer navigation
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bd :bdelete<CR>

" Quick edit vimrc
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" File type specific settings
augroup filetypes
    autocmd!
    autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
    autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2
    autocmd FileType json setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END

" Status line configuration
set statusline=%f           " File name
set statusline+=%m          " Modified flag
set statusline+=%r          " Read-only flag
set statusline+=%h          " Help buffer flag
set statusline+=%w          " Preview window flag
set statusline+=%=          " Right align the rest
set statusline+=\ %y        " File type
set statusline+=\ %l/%L     " Line number / Total lines
set statusline+=\ %c        " Column number
set statusline+=\ %P        " Percentage through file

" Load local vimrc if it exists
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif