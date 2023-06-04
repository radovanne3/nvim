vim.g.mapleader = " "
vim.g.maplocalleader = ','

local keymap = vim.keymap
-- This will be needed if nvim-tree is disabled
-- vim.keymap.set("n", "<leader>po", vim.cmd.Ex, { desc = '[p]roject netrw [o]verlay'})

-- Move highlighted text
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Prevent cursor from jumping to the end of the line while appending next to previous line
keymap.set("n", "J", "mzJ`z")
-- Keep cursor in the middle while jumping
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep search term in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- Preserve copied text after pasting
keymap.set("x", "<C-p>", [["_dP]])
-- yank to system clipboard
keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])
-- This is sad one
keymap.set("i", "<C-c>", "<Esc>")

keymap.set("n", "Q", "<nop>")

-- Clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")


