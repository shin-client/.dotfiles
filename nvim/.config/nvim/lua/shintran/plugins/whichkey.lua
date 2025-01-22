return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.add({
			{
				"<leader>w",
				desc = "Save file",
			},
			{
				"<leader>q",
				desc = "Quit",
			},
		})
	end,
}
