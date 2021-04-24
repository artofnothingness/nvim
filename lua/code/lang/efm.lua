local python_args = {}
local lua_args = {}

local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local autopep8 = {formatCommand = "autopep8 --max-line-length 100 -", formatStdin = true}
local lua_fmt = {formatCommand = "lua-format -i", formatStdin = true}

-- table.insert(python_args, flake8)
table.insert(python_args, autopep8)
table.insert(lua_args, lua_fmt)

require"lspconfig".efm.setup {
    handlers = lang.handlers,
    cmd = {"/home/alex/go/bin/efm-langserver"},
    init_options = {documentFormatting = true, codeAction = false},

    filetypes = {"python", "lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            python = python_args,
            lua = lua_args,
        }
    }
}
