local neogit = require("neogit")

neogit.setup {
  use_magit_keybindings = true
}

vim.keymap.set("n", "<leader>gg", vim.cmd.Neogit)
