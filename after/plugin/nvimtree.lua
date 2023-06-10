require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
	},
	diagnostics = {
		enable = true,
	},
	update_focused_file = {
		enable = true,
	},
	disable_netrw = true,
	hijack_netrw = true,
})

vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>")
