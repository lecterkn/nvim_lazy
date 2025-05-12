return {
	"alyxshang/sakuramaiden.nvim",
	dependencies = {
		{
			"alyxshang/guizhong.nvim",
			version = "v.0.2.0",
		},
	},
	config = function()
		-- Setting the transparency setting.
		-- Can be set to "true" or "false".

		require("sakuramaiden").setup({ transparent = false })
		vim.cmd.colorscheme("sakuramaiden")
	end,
}
