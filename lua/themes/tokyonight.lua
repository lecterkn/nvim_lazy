local transparent = vim.g.transparent_enabled

return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "night",
        transparent = transparent,
        terminal_colors = true,
        styles = {
            keywords = { italic = false },
            sidebar = transparent and "transparent" or "dark",
            floats = transparent and "transparent" or "dark",
        },
    },
}
