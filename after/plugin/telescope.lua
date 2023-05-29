local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs',  function()
  builtin.grep_string({ search = vim.fn.input("Grep > ")}) end)
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bB', builtin.buffers, {})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})

-- enable project extension
require'telescope'.load_extension('project')

vim.keymap.set('n', '<leader>pp', ":Telescope project<CR>" , {silent = true})
