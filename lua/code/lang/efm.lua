local python_arguments = {}

local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local black = {formatCommand = "black --quiet -", formatStdin = true}

table.insert(python_arguments, flake8)
table.insert(python_arguments, black)

require"lspconfig".efm.setup {
    cmd = {"/home/alex/go/bin/efm-langserver"},
    init_options = {documentFormatting = true, codeAction = false},

    handlers = {["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, { 
                virtual_text = false,
                signs = true,
                underline = false,
                update_in_insert = true,
              })},

    filetypes = {"python"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            python = python_arguments,
        }
    }
}
