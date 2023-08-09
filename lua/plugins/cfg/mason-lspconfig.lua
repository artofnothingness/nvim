require('mason-lspconfig').setup {
    ensure_installed = { "lua_ls", "pyright", "clangd", "cmake" },
    automatic_installation = true,
}
