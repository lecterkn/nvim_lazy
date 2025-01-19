local transparent = vim.g.transparent_enabled

return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("cyberdream").setup({
            transparent = false,
            italic_comments = true,
        })
    end
}
