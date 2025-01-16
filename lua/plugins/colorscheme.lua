return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            transparent = true,
            styles = {
                sidebar = "transparent",
                floats = "transparent"
            },
        },
    },
    {
        "rose-pine/neovim", 
	    name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                variant = "moon",
                styles = {
                    bold = true,
                    italic = false,
                    transparency = true,
                },
            })
        end,
    },
}
