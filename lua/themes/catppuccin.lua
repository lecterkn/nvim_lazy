local transparent = vim.g.transparent_enabled

return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = transparent,
            term_colors = true,
            no_italic = false,
            no_bold = false,
            styles = {
                comments = { "italic" },
                conditions = { "italic" },
            }
        })
    end
}
