local transparent = vim.g.transparent_enabled

return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            variant = "moon",
            dark_variant = "moon",
            enable = {
                legacy_highlights = true,
            },
            styles = {
                bold = true,
                italic = false,
                transparency = transparent,
            },
        })
    end,
}
