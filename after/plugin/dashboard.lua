local dashboard = require("dashboard")
dashboard.setup({
	theme = "doom",
	config = {
		header = {
			"",
			"",
			" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
			" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
			" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
			" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
			" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
			" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
			"",
			" [ TIP: To exit Neovim, just power off your computer. ] ",
			"",
		}, --your header
		center = {
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Find Project",
				desc_hl = "String",
				key = "p",
				keymap = "SPC p p",
				key_hl = "Number",
				action = ":Telescope project",
			},
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Git Files",
				desc_hl = "String",
				key = "g",
				keymap = "SPC g f",
				key_hl = "Number",
				action = ":Telescope git_files",
			},
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Find Files",
				desc_hl = "String",
				key = "f",
				keymap = "SPC f f",
				key_hl = "Number",
				action = ":Telescope find_files",
			},
			{
				icon = " ",
				icon_hl = "Title",
				desc = "Old Files",
				desc_hl = "String",
				key = "o",
				keymap = "SPC o f",
				key_hl = "Number",
				action = ":Telescope oldfiles",
			},
		},
		footer = {}, --your footer
	},
})
