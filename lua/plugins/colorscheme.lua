local transparent = true

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "night",
            transparent = transparent,
            styles = {
                sidebar = transparent and "transparent" or "dark",
                floats = transparent and "transparent" or "dark",
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
                    transparency = transparent,
                },
            })
        end,
    },
    {
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = transparent,
                term_colors = true,
                no_italic = true,
            })
        end
    }
}
