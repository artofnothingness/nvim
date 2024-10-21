return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  opts = {
    ensure_installed = {
      'cpp',
      'c',
      'python',
      'cuda',
      'json',
      'cmake',
      'make',
      'bash',
      'lua',
      'vim',
      'diff',
      'yaml',
      'markdown',
      'markdown_inline',
      'regex',
    },

    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
}
