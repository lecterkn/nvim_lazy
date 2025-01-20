local transparent = vim.g.transparent_enabled

return {
    "Mofiqul/dracula.nvim",
    config = function()
        require("dracula").setup({
            transparent_bg = transparent,
            italic_comment = true,
        })
    end
}
