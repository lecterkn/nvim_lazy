function nvim_tree_setup()
    require("nvim-tree").setup({
        hijack_netrw = false,
        sort = {
            sorter = "case_sensitive",
        },
        view = {
            width = 32,
        },
        renderer = {
            group_empty = true,
            indent_width = 1,
        },
        filters = {
            custom = {
                ".idea",
                ".vscode",
                ".DS_Store",
            },
            exclude = {
                ".env"
            },
        }
    })
    vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
end

return {
    {
        "nvim-tree/nvim-tree.lua",
        config = nvim_tree_setup,
    },
    {
        "nvim-tree/nvim-web-devicons",
    }
}

