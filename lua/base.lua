local options = {
	-- Show line numbers and relative line numbers
	number = true,
	relativenumber = true,
	-- More space for displaying messages
	cmdheight = 2,
	-- The encoding written to file
	fileencoding = "utf-8",
	-- Pop up menu height
	pumheight = 10,
	-- Common sense
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	-- Makes vim indent smartly
	smartindent = true,
	-- Prevents you from hitting your monitor
	wrap = false,
	-- Prevents vim from creating backup files
	swapfile = false,
	backup = false,
	-- Cretes undo files
	undofile = true,
	undodir = os.getenv("HOME") .. "/.vim/undodir",
	-- The font used in graphical neovim instances
	guifont = "JetBrains Mono:h12",
	-- Always use popup menu without preselction
	completeopt = {"menu", "menuone", "noselect" },
	-- Make searching more reliable and pleasant
	ignorecase = true,
	smartcase = true,
	hlsearch = true,
	incsearch = true,
	-- Esential for colorschemes
	termguicolors = true,
	-- Nicer feeling while scrolling
	scrolloff = 8,
	-- Always show sign column
	signcolumn = "yes",
	-- Feels faster
	updatetime = 50,
	-- Highlight current line
	cursorline = true,
	-- How to behave while splitting windows
	splitbelow = true,
	splitright = true,
}

local opt = vim.opt

opt.isfname:append("@-@")
-- if word is one-two it will register it like such
opt.iskeyword:append("-")

for k, v in pairs(options) do
	opt[k] = v
end
