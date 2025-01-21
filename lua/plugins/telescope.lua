function config()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<leader>pg", builtin.git_files, {})
    vim.keymap.set("n", "<leader>ss", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>th", builtin.colorscheme, {})
end

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = config
}
