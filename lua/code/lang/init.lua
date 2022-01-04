-- Declare Vars
lang = {
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    handlers = {["textDocument/publishDiagnostics"] = 
      vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { 
        virtual_text = false,
        signs = true,
        underline = false,
        update_in_insert = true,
        }
      )
    },
}


-- Set Up Vars
lang.capabilities.textDocument.completion.completionItem.snippetSupport = true
lang.capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
        'documentation',
        'detail',
        'additionalTextEdits',
    }
}


lang.capabilities = require('cmp_nvim_lsp').update_capabilities(lang.capabilities)
