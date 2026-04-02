vim.pack.add {
  {
    src = 'https://github.com/saghen/blink.cmp',
    version = vim.version.range '1.x',
  },
}

require('blink-cmp').setup {
  keymap = {
    preset = 'default',
  },

  appearance = { nerd_font_variant = 'mono' },

  completion = { documentation = { auto_show = true, auto_show_delay_ms = 500 } },
  sources = { default = { 'lsp', 'path' } },
  fuzzy = { implementation = 'lua' },
  signature = { enabled = true },
}
