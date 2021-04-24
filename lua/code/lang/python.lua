require'lspconfig'.pyright.setup{
    handlers = lang.handlers,
    capabilities = lang.capabilities,

    on_attach = function(client, bufnr)
        if lsp_status ~= nil then
            lsp_status.on_attach(client, bufnr)
        end
        require "lsp_signature".on_attach()  -- Note: add in lsp client on-attach
    end,

    plugins = { pylint = { enabled = true, executable = 'pylint', args={'--rcfile', '~/.pylintrc'} } },

}
