" ~/.config/nvim/init.vim - Neovim configuration file
" Modern Neovim configuration with enhanced features

" Source traditional vimrc for compatibility
if filereadable(expand('~/.vimrc'))
    source ~/.vimrc
endif

" Neovim specific settings
if has('nvim')
    " Terminal settings
    set termguicolors           " Enable true color support
    
    " Terminal mode key mappings
    tnoremap <Esc> <C-\><C-n>   " Exit terminal mode with Esc
    tnoremap <C-h> <C-\><C-n><C-w>h
    tnoremap <C-j> <C-\><C-n><C-w>j
    tnoremap <C-k> <C-\><C-n><C-w>k
    tnoremap <C-l> <C-\><C-n><C-w>l
    
    " Terminal shortcuts
    nnoremap <leader>t :terminal<CR>
    nnoremap <leader>ts :split \| terminal<CR>
    nnoremap <leader>tv :vsplit \| terminal<CR>
    
    " LSP and completion settings (if plugins are available)
    if has('nvim-0.5')
        " Modern Neovim features for version 0.5+
        lua << EOF
-- Basic Lua configuration for Neovim
-- This section can be expanded with plugin configurations

-- Set up basic options
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- Key mappings using Lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- LSP mappings (when LSP is configured)
-- map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
-- map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)

-- Diagnostic mappings (when diagnostics are available)
-- map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
-- map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
-- map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
EOF
    endif
    
    " Improved search and replace
    set inccommand=split        " Live preview of substitute commands
    
    " Better diff algorithm
    set diffopt+=algorithm:patience,indent-heuristic
endif

" Plugin management placeholder
" Uncomment and modify based on your preferred plugin manager
" Example for vim-plug:
" call plug#begin('~/.local/share/nvim/plugged')
" 
" " Essential plugins
" Plug 'preservim/nerdtree'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
" Plug 'ctrlpvim/ctrlp.vim'
" 
" " Language support
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale'
" 
" " Color schemes
" Plug 'morhetz/gruvbox'
" Plug 'dracula/vim'
" 
" call plug#end()

" Neovim-specific color scheme
if has('nvim') && has('termguicolors')
    set termguicolors
    " colorscheme gruvbox  " Uncomment when color scheme is installed
endif

" Additional Neovim configurations
if has('nvim')
    " Python provider settings (optional)
    " let g:python3_host_prog = '/usr/bin/python3'
    
    " Node.js provider settings (optional)
    " let g:node_host_prog = '/usr/local/bin/neovim-node-host'
    
    " Ruby provider settings (optional)
    " let g:ruby_host_prog = '/usr/local/bin/neovim-ruby-host'
endif

" Load local Neovim config if it exists
if filereadable(expand('~/.config/nvim/init.local.vim'))
    source ~/.config/nvim/init.local.vim
endif