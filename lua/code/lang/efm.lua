local python_arguments = {}

local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local black = {formatCommand = "black --quiet -l 100 -", formatStdin = true}

-- table.insert(python_arguments, flake8)
table.insert(python_arguments, black)

require"lspconfig".efm.setup {
    handlers = lang.handlers,
    cmd = {"/home/alex/go/bin/efm-langserver"},
    init_options = {documentFormatting = true, codeAction = false},

    filetypes = {"python"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            python = python_arguments,
        }
    }
}
