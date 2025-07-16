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

call plug#end()
]]