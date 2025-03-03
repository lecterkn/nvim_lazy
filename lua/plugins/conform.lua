return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports", "gofmt" },
				java = { "google-java-format" },
				kotlin = { "ktlint" },
				svelte = { "prettier" },
				markdown = { "prettier" },
				vue = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
				json = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
			},
			format_on_save = {
				timeout_ms = 5000,
				lsp_format = "fallback",
			},
		})
	end,
}
