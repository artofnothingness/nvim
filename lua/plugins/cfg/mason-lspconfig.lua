require('mason-lspconfig').setup {
    ensure_installed = { "lua_ls", "pyright", "clangd", "cmake-language-server" },
    automatic_installation = true,
}
