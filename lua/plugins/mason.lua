function mason_lspconfig_setup()
    local lspconfig = require("lspconfig")

    require('mason').setup()
    require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls', 'rust_analyzer', 'ts_ls', 'gopls', 'zls', 'tailwindcss' },
        handlers = {
            function(server_name)
                lspconfig[server_name].setup({})
            end,
            ["gopls"] = function()
                lspconfig.gopls.setup({
                    settings = {
                        gopls = {
                            analyses = {
                                unusedparams = true,
                            },
                            staticcheck = true,
                            gofumpt = true,
                        },
                    },
                })
            end,
        }
    })
    -- format_on_save_setup()
end

function format_on_save_setup()
    local buffer_autoformat = function(bufnr)
        local group = 'lsp_autoformat'
        vim.api.nvim_create_augroup(group, { clear = false })
        vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })
        vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            group = group,
            desc = 'LSP format on save',
            callback = function()
                vim.lsp.buf.format({ async = false, timeout_ms = 5000 })
            end,
        })
    end

    vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(event)
            local id = vim.tbl_get(event, 'data', 'client_id')
            local client = id and vim.lsp.get_client_by_id(id)
            if client == nil then
                return
            end
            if client.supports_method('textDocument/formatting') then
                buffer_autoformat(event.buf)
            end
        end
    })
end

return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
    },
    config = mason_lspconfig_setup
}
