return { -- Autocompletion
  'saghen/blink.cmp',
  event = 'VimEnter',
  version = '1.*',
  dependencies = {},
  opts = {
    keymap = {
      preset = 'default',
    },

    appearance = { nerd_font_variant = 'mono' },

    completion = { documentation = { auto_show = true, auto_show_delay_ms = 500 } },
    sources = { default = { 'lsp', 'path' } },
    fuzzy = { implementation = 'lua' },
    signature = { enabled = true },
  },
}
