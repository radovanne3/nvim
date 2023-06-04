local opt = vim.opt

-- Show line numbers and relative line numbers
opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.smartindent = true

-- Prevents you from hitting your monitor
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Make searching more reliable and pleasant
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Esential for colorschemes
opt.termguicolors = true

-- Nicer feeling while scrolling
opt.scrolloff = 8
-- Always show sign column
opt.signcolumn = "yes"

opt.isfname:append("@-@")
-- if word is one-two it will register it like such
opt.iskeyword:append("-")

-- Feels faster
opt.updatetime = 50

-- Highlight current line
opt.cursorline = true

-- How to behave while splitting windows
opt.splitbelow = true
opt.splitright = true

