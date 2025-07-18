vim.cmd [[
call plug#begin('~/.config/nvim/plugged')

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" theme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" buffer management and active editor switcher
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'

" git integration
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" LSP support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" formatting and linting
Plug 'nvimtools/none-ls.nvim'
Plug 'jay-babu/mason-null-ls.nvim'

Plug 'akinsho/bufferline.nvim'
Plug 'roobert/bufferline-cycle-windowless.nvim'


call plug#end()
]]
