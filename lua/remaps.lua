vim.g.mapleader = " "
vim.g.maplocalleader = ','

-- This will be needed if nvim-tree is disabled
-- vim.keymap.set("n", "<leader>po", vim.cmd.Ex, { desc = '[p]roject netrw [o]verlay'})

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Prevent cursor from jumping to the end of the line while appending next to previous line
vim.keymap.set("n", "J", "mzJ`z")
-- Keep cursor in the middle while jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep search term in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Preserve copied text after pasting
vim.keymap.set("x", "<C-p>", [["_dP]])
-- yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- This is sad one
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

