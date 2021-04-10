require'lspconfig'.clangd.setup{
    cmd = { "clangd-11", "--background-index" },
    handlers = {["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { 
                virtual_text = false,
                signs = ture,
                underline = true,
                update_in_insert = true,
              })}
}
