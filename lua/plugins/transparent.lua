return {
    "xiyaowong/transparent.nvim",
    config = function()
        local transparent = require("transparent")
        transparent.setup({
            -- table: default groups
            groups = {
                'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
                'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
                'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
                'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
                'EndOfBuffer',
            },
            -- table: additional groups that should be cleared
            extra_groups = {
                "NormalFloat",
            },
            -- table: groups you don't want to clear
            exclude_groups = {},
            -- function: code to be executed after highlight groups are cleared
            -- Also the user event "TransparentClear" will be triggered
            on_clear = function() end,
        })

        transparent.clear_prefix("Buffer")
        transparent.clear_prefix("NeoTree")
        transparent.clear_prefix("NvimTree")
        transparent.clear_prefix("Telescope")

        vim.keymap.set("n", "<leader>tp", vim.cmd.TransparentToggle, {})
    end
}
