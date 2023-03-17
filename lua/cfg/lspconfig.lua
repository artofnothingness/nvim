local util = require 'lspconfig.util'
-- Add additional capabilities supported by nvim-cmp
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = false,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

require 'lspconfig'.cmake.setup {}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require 'lspconfig'.ccls.setup {
    init_options = {
        compilationDatabaseDirectory = "/rep/ros2/build/",
        index = {
            threads = 0,
        },
        clang = {
            extraArgs = { "-std=c++17" },
            excludeArgs = { "-fconcepts" },
        },
    },
    root_dir = util.root_pattern(".git"),
}


require('lspconfig').pyright.setup {
    on_attach = function(client, bufnr)
        if lsp_status ~= nil then
            lsp_status.on_attach(client, bufnr)
        end
    end,
    plugins = { pylint = { enabled = true, executable = 'pylint', args = { '--rcfile', '~/.pylintrc' } } },
}

require('lspconfig').lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}
