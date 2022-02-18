require'lspconfig'.pyright.setup{

    on_attach = function(client, bufnr)
        if lsp_status ~= nil then
            lsp_status.on_attach(client, bufnr)
        end
    end,
    plugins = { pylint = { enabled = true, executable = 'pylint', args={'--rcfile', '~/.pylintrc'} } },
}
