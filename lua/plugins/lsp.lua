function cmp_setup()
    local cmp = require("cmp")
    cmp.setup({
        sources = {
            { name = 'nvim_lsp' },
            { name = 'buffer' },
            { name = 'luasnip' },
        },
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ['<Tab>'] = cmp.mapping(function(fallback)
                local col = vim.fn.col('.') - 1
                if cmp.visible() then
                    cmp.select_next_item({ behavior = 'select' })
                elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                    fallback()
                else
                    cmp.complete()
                end
            end, { 'i', 's' }),
            ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
        }),
    })
end

return {
    {
        'neovim/nvim-lspconfig'
    },
    {
        'hrsh7th/cmp-nvim-lsp'
    },
    {
        'hrsh7th/nvim-cmp',
        config = cmp_setup
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    }
}
