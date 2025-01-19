local transparent = vim.g.transparent_enabled

return {
    "rebelot/kanagawa.nvim",
    config = function()
        require("kanagawa").setup({
            theme = "wave",    -- Load "wave" theme when 'background' option is not set
            background = {     -- map the value of 'background' option to a theme
                dark = "wave", -- try "dragon" !
                light = "lotus"
            },
            keywordStyle = { italic = false },
            transparent = transparent,
        })
    end
}
