return {
	"olimorris/codecompanion.nvim",
	cmd = {
		"CodeCompanion",
		"CodeCompanionActions",
		"CodeCompanionChat",
		"CodeCompanionCmd",
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		{
			"MeanderingProgrammer/render-markdown.nvim",
			ft = { "codecompanion" },
		},
	},
	opts = {
		log_level = "DEBUG",
		strategies = {
			chat = {
				adapter = "gemini",
			},
			inline = {
				adapter = "gemini",
			},
		},
		gemini = function()
			return require("codecompanion.adapters").extend("gemini", {
				url = "https://generativelanguage.googleapis.com/v1beta/models/${model}:streamGenerateContent?alt=sse&key=${api_key}",
				env = {
					api_key = "GEMINI_API_KEY",
					model = "gemini-2.0-flash",
				},
			})
		end,
	},
}
