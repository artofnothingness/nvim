require'lspconfig'.pyright.setup{
    handlers = {["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { 
                virtual_text = false,
                signs = true,
                underline = false,
                update_in_insert = true,
              })},

    on_attach = function(client, bufnr)
        if lsp_status ~= nil then
            lsp_status.on_attach(client, bufnr)
        end
        require "lsp_signature".on_attach()  -- Note: add in lsp client on-attach
    end,

    plugins = {
                pylint = {
                    enabled = true,
                    executable = 'pylint',
                    args={'--rcfile', '~/.pylintrc'}
                }
    },

	capabilities           = {
	textDocument           = {
	completion             = {
	completionItem         = {
		snippetSupport = true } } } 
    },

}
