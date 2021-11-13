local lsp = require "lspconfig"

lsp.clangd.setup {
    cmd = { 
      "clangd", 
      "--background-index",
      "--suggest-missing-includes"
  },
    handlers = lang.handlers,
    capabilities = lang.capabilities,
    on_attach = function(client, bufnr)
        if lsp_status ~= nil then
            lsp_status.on_attach(client, bufnr)
        end
        require'lsp_signature'.on_attach()  
        require'aerial'.on_attach(client)
    end,
}
