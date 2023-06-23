require 'nvim-treesitter.configs'.setup {
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = { "cpp", "c", "python", "cuda", "json", "cmake", "make", "bash", "lua", "vim", "yaml", "markdown",
        "markdown_inline" },

    highlight = {
        enable = true,
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
        },
    },

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,
}
