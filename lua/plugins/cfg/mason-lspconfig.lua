require('mason-lspconfig').setup {
    ensure_installed = { "lua_ls", "pyright", "clangd" },
    automatic_installation = true,
}
