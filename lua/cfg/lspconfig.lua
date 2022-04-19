-- Add additional capabilities supported by nvim-cmp
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = false,
  update_in_insert = false,
  severity_sort = false,
  float = { border = "single" },
})


vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

require'lspconfig'.cmake.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require'lspconfig'.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build/";
    index = {
      threads = 0;
    };
    clang = {
      extraArgs = { "-std=c++17"};
      excludeArgs = { "-fconcepts"};
    };
  }
}

-- require("clangd_extensions").setup {
--     server = {
--       capabilities = capabilities,
--       cmd = { 
--         "clangd", 
--         "--background-index",
--         "--enable-config",
--         "--compile-commands-dir="
--       },
--       on_attach = function(client, bufnr)
--           if lsp_status ~= nil then
--               lsp_status.on_attach(client, bufnr)
--           end
--       end,
--     },
--     extensions = {
--         -- defaults:
--         -- Automatically set inlay hints (type hints)
--         autoSetHints = true,
--         -- Whether to show hover actions inside the hover window
--         -- This overrides the default hover handler
--         hover_with_actions = true,
--         -- These apply to the default ClangdSetInlayHints command
--         inlay_hints = {
--             -- Only show inlay hints for the current line
--             only_current_line = false,
--             -- Event which triggers a refersh of the inlay hints.
--             -- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
--             -- not that this may cause  higher CPU usage.
--             -- This option is only respected when only_current_line and
--             -- autoSetHints both are true.
--             only_current_line_autocmd = "CursorHold",
--             -- whether to show parameter hints with the inlay hints or not
--             show_parameter_hints = true,
--             -- whether to show variable name before type hints with the inlay hints or not
--             show_variable_name = true,
--             -- prefix for parameter hints
--             parameter_hints_prefix = "<- ",
--             -- prefix for all the other hints (type, chaining)
--             other_hints_prefix = "=> ",
--             -- whether to align to the length of the longest line in the file
--             max_len_align = false,
--             -- padding from the left if max_len_align is true
--             max_len_align_padding = 1,
--             -- whether to align to the extreme right or not
--             right_align = false,
--             -- padding from the right if right_align is true
--             right_align_padding = 7,
--             -- The color of the hints
--             highlight = "Comment",
--         },
--         ast = {
--             role_icons = {
--                 type = "",
--                 declaration = "",
--                 expression = "",
--                 specifier = "",
--                 statement = "",
--                 ["template argument"] = "",
--             },
--
--             kind_icons = {
--                 Compound = "",
--                 Recovery = "",
--                 TranslationUnit = "",
--                 PackExpansion = "",
--                 TemplateTypeParm = "",
--                 TemplateTemplateParm = "",
--                 TemplateParamObject = "",
--             },
--
--             highlights = {
--                 detail = "Comment",
--             },
--     }
--   }
-- }

require'lspconfig'.pyright.setup{

    on_attach = function(client, bufnr)
        if lsp_status ~= nil then
            lsp_status.on_attach(client, bufnr)
        end
    end,
    plugins = { pylint = { enabled = true, executable = 'pylint', args={'--rcfile', '~/.pylintrc'} } },
}
