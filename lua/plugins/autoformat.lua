return { -- Autoformat
  'stevearc/conform.nvim',
  keys = {
    {
      '<M-f>',
      function()
        require('conform').format { async = true, lsp_fallback = true }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 5000,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      cpp = { 'clang-format' },
      python = { 'ruff_format' },
    },
  },
}
