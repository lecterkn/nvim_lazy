return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports", "gofmt" },
				kotlin = { "ktlint" },
				markdown = { "prettier" },
				vue = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				json = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				["*"] = { "codespell" },
			},
			format_on_save = {
				timeout_ms = 5000,
				lsp_format = "fallback",
			},
		})
	end,
}
