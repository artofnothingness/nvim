local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        branch = "main"
    },
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",   
  ignore_install = { "javascript" }, -- List of parsers to ignore installing

  highlight = {
    enable = true,                  
    additional_vim_regex_highlighting = false,
  },
}
