require('mason-lspconfig').setup {
    ensure_installed = { "lua_ls", "jedi_language_server", "clangd", "cmake" },
    automatic_installation = true,
}
