return {
    {
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',
        },
        config = function()
            require("barbar").setup({
                animation = false,
            })
            vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', {})
            vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', {})
            vim.keymap.set('n', '<leader>x', '<Cmd>BufferClose<CR>', {})
        end,
        version = '^1.0.0',
    }
}
