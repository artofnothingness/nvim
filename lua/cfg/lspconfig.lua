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

require'lspconfig'.cmake.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require'lspconfig'.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "";
    index = {
      threads = 0;
    };
    clang = {
      extraArgs = { "-std=c++17"};
      excludeArgs = { "-fconcepts"};
    };
  },
  root_dir = util.root_pattern("build", "compile_commands.json", ".git");
}


require('lspconfig').pyright.setup{

    on_attach = function(client, bufnr)
        if lsp_status ~= nil then
            lsp_status.on_attach(client, bufnr)
        end
    end,
    plugins = { pylint = { enabled = true, executable = 'pylint', args={'--rcfile', '~/.pylintrc'} } },
}
