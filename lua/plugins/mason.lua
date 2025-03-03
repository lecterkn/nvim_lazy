function MasonSetup()
	local lspconfig = require("lspconfig")

	require("mason").setup()
	require("mason-lspconfig").setup({
		ensure_installed = {
			"lua_ls",
			"rust_analyzer",
			"ts_ls",
			"gopls",
			"zls",
			"tailwindcss",
			"svelte",
			"css_ls",
			"bashls",
			"vimls",
			"volar",
		},
		handlers = {
			function(server_name)
				lspconfig[server_name].setup({})
			end,
			["gopls"] = function()
				lspconfig.gopls.setup({
					settings = {
						gopls = {
							analyses = {
								unusedparams = true,
							},
							staticcheck = true,
							gofumpt = true,
						},
					},
				})
			end,
			["ts_ls"] = function()
				lspconfig.ts_ls.setup({})
			end,
			["volar"] = function()
				lspconfig.volar.setup({})
			end,
		},
	})
end

return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"williamboman/mason.nvim",
	},
	config = MasonSetup,
}
