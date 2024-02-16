return {
    {
        'p00f/clangd_extensions.nvim',
        config = function() require('plugins/cfg/clangd_extensions') end,
        dependencies = { 'neovim/nvim-lspconfig' },
        lazy = false,
    },
    {
        'neovim/nvim-lspconfig',
        config = function() require('plugins/cfg/lspconfig') end,
        lazy   = false,
        keys   = {
            { 'gd',         '<cmd>lua vim.lsp.buf.definition()<CR>',            desc = 'go to definition' },
            { 'gD',         '<cmd>lua vim.lsp.buf.declaration()<CR>',           desc = 'go to declaration' },
            { 'ga',         '<cmd>lua vim.lsp.buf.code_action()<CR>',           desc = 'code action' },
            { '<leader>cr', '<cmd>lua vim.lsp.buf.rename()<CR>',                desc = 'rename' },
            { '<M-s>',      '<cmd>lua vim.lsp.buf.signature_help()<CR>',        desc = 'sign help' },
            { '<M-k>',      '<cmd>lua vim.lsp.buf.hover()<CR>',                 desc = 'hover' },
            { 'gr',         '<cmd>Glance references<CR>',                       desc = 'go to references' },
            { '[d',         '<cmd>lua vim.diagnostic.goto_prev()<CR>',          desc = 'diag prev' },
            { ']d',         '<cmd>lua vim.diagnostic.goto_next()<CR>',          desc = 'diag next' },
            { '<A-f>',      function() vim.lsp.buf.format { async = true } end, desc = 'format' },
            { '<F2>',       ':ClangdSwitchSourceHeader<CR>',                    desc = 'source/header' },
        }
    }
}
