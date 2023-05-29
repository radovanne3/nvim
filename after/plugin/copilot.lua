vim.keymap.set("i", "<C-TAB>", ":copilot#Accept('\\<CR>')<CR>", {silent = true})
vim.g.copilot_no_tab_map = true
vim.cmd[[highlight CopilotSuggestion guifg=#66CED6 ctermfg=8]]



