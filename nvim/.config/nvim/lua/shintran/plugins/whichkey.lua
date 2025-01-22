return {
	"folke/which-key.nvim",
	config = function()
		require("which-key").setup({
			plugins = {
				spelling = { enabled = true, suggestions = 20 }, -- Gợi ý chính tả
			},
			window = {
				border = "rounded", -- Đường viền cửa sổ (rounded, single, double, none)
				position = "bottom", -- Vị trí (bottom, top)
			},
			layout = {
				height = { min = 4, max = 25 }, -- Chiều cao cửa sổ
				width = { min = 20, max = 50 }, -- Chiều rộng cửa sổ
			},
		})
	end,
}
