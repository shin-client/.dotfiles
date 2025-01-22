return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {
				"cssls",
				"eslint",
				"html",
				"jsonls",
				"tsp_server",
				"ts_ls",
				"emmet_ls",
				"pyright",
				"tailwindcss",
			},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua", -- lua formatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint",
				"eslint_d",
			},
		})
	end,
	cmd = { "Mason", "MasonInstall", "MasonUpdate", "MasonUninstall", "MasonLog" }, -- Đảm bảo plugin chỉ tải khi gõ lệnh :Mason
	event = { "BufReadPre", "BufNewFile" }, -- Hoặc tải trước khi mở file
}
