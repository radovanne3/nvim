local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"rust_analyzer",
	"pyright",
	"lua_ls",
	"jsonls",
	"html",
	"cssls",
	"clojure_lsp",
})
-- Fix Undefined global 'vim'
lsp.nvim_workspace()

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-f>"] = cmp.mapping.scroll_docs(-4),
	["<C-d>"] = cmp.mapping.scroll_docs(4),
	["<Tab>"] = cmp.mapping.confirm({ select = true }),
	["<C-e>"] = cmp.mapping.abort(),
	["<C-Space>"] = cmp.mapping.complete(),
})

-- cmp_mappings['<Tab>'] = nil
-- cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
	sources = {
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	},
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = "E",
		warn = "W",
		hint = "H",
		info = "I",
	},
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false, silent = true }

	-- LSP saga
	vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", opts)
	vim.keymap.set("n", "<leader>ws", "<cmd>Lspsaga workspace_symbol<CR>", opts)
	vim.keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts)
	vim.keymap.set("n", "gD", "<cmd>Lspsaga peek_definition<CR>", opts)
	vim.keymap.set("n", "gT", "<cmd>Lspsaga peek_type_definition<CR>", opts)
	vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
	vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
	vim.keymap.set("n", "<leader>cr", "<cmd>Lspsaga rename ++project<CR>", opts)

	vim.keymap.set("n", "<leader>q", "<cmd>Lspsaga show_workspace_diagnostics<CR>", opts)
	vim.keymap.set("n", "<leader>Q", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
	vim.keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	vim.keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
	vim.keymap.set({ "n", "t" }, "<M-d>", "<cmd>Lspsaga term_toggle<CR>", opts)
	vim.cmd([[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]])
	vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", opts)

	-- LSP defaults
	-- vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	-- vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts )
	-- vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
	-- vim.keymap.set("n", "<leader>fd", function() vim.diagnostic.open_float() end, opts)
	-- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	-- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	-- vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
	-- vim.keymap.set("n", "gD", function() vim.lsp.buf.references() end, opts)
	-- vim.keymap.set("n", "<leader>cr", function() vim.lsp.buf.rename() end, opts)
	-- vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
	-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})
