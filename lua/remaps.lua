local opts = { noremap = true, silent = true }
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap
-- This will be needed if nvim-tree is disabled
-- vim.keymap.set("n", "<leader>po", vim.cmd.Ex, { desc = '[p]roject netrw [o]verlay'})
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move highlighted text
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
-- Prevent cursor from jumping to the end of the line while appending next to previous line
keymap.set("n", "J", "mzJ`z", opts)
-- Keep cursor in the middle while jumping
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)
-- Keep search term in the middle
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)
-- Preserve copied text after pasting
keymap.set("x", "<C-p>", [["_dP]], opts)
-- yank to system clipboard
keymap.set({ "n", "v" }, "<leader>y", [["+y]], opts)
keymap.set("n", "<leader>Y", [["+Y]], opts)
-- This is sad one
keymap.set("i", "<C-c>", "<Esc>", opts)

keymap.set("n", "Q", "<nop>", opts)
-- Keep copied text saved after pasting
keymap.set("v", "p", '"_dP', opts)
-- Clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- Indent visual blocks
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)
-- Noooice saving
keymap.set("n", "<C-s>", "<cmd>:w<CR>", opts)
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
