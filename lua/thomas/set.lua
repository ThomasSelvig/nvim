-- Editor settings for web development and general vim usage

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Completion
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.pumheight = 10

-- Performance
vim.opt.updatetime = 50
vim.opt.timeoutlen = 300

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse
vim.opt.mouse = "a"

-- Folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99

-- Wild menu
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignore = "*.o,*.obj,*.dylib,*.bin,*.dll,*.exe,*/.git/*,*/.svn/*,*/.hg/*,*/CVS/*,*/.DS_Store,*/node_modules/*,*/.nyc_output/*"

-- Show invisible characters
vim.opt.list = true
vim.opt.listchars = { tab = ">>", trail = ".", nbsp = "+" }

-- File tree (netrw settings)
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 25

-- Format options
vim.opt.formatoptions:remove({ "c", "r", "o" })

-- Backspace behavior
vim.opt.backspace = "indent,eol,start"

-- Case-insensitive filename completion
vim.opt.wildignorecase = true

-- Better display for messages
vim.opt.cmdheight = 1

-- Don't show mode in command line (status line shows it)
vim.opt.showmode = false

-- Enable break indent
vim.opt.breakindent = true

-- Decrease update time
vim.opt.updatetime = 250

-- Set completeopt to have a better completion experience
vim.opt.completeopt = "menuone,noselect"

-- Global status line
vim.opt.laststatus = 3