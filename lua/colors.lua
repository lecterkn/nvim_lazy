local scheme_file = vim.fn.expand('$HOME/.config/nvim/.configs/colorscheme')

local function save_colorscheme(scheme)
    local file = io.open(scheme_file, 'w')
    if file then
        file:write(scheme)
        file:close()
    end
end

local function load_last_colorscheme()
    local file = io.open(scheme_file, 'r')
    if file then
        local scheme = file:read('*a')
        file:close()
        scheme = vim.fn.trim(scheme)
        if scheme and #scheme > 0 then
            vim.cmd('colorscheme ' .. scheme)
        end
    end
end

-- load
load_last_colorscheme()

-- save colorscheme
vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function()
        local current_scheme = vim.g.colors_name
        if current_scheme then
            save_colorscheme(current_scheme)
        end
    end,
})
