local transparent = vim.g.transparent_enabled

return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
			theme = "wave", -- "wave", "dragon", "lotus"
			background = {
				dark = "wave",
				light = "lotus",
			},
			keywordStyle = { italic = false },
			transparent = transparent,
			terminalColors = true,
		})
	end,
}
