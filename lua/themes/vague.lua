return {
	"vague2k/vague.nvim",
	config = function()
		require("vague").setup({
			styles = {
				strings = "none",
			},
		})
	end,
}
