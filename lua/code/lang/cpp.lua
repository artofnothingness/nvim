require'lspconfig'.clangd.setup{
    cmd = { "clangd-11", "--background-index" },
    handlers = {["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { 
                virtual_text = false,
                signs = true,
                underline = false,
                update_in_insert = true,
              })},
    on_attach = 

    function(client, bufnr)
        if lsp_status ~= nil then
            lsp_status.on_attach(client, bufnr)
        end
        require "lsp_signature".on_attach()  -- Note: add in lsp client on-attach
    end,
	capabilities           = {
	textDocument           = {
	completion             = {
	completionItem         = {
		snippetSupport = true } } } } ,
}
