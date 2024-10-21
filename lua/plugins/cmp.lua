return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-cmdline',
  },
  config = function()
    local cmp = require 'cmp'

    cmp.setup {
      completion = { completeopt = 'menu,menuone,noinsert' },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

      mapping = cmp.mapping.preset.insert {
        ['<CR>'] = cmp.mapping.confirm { select = true },
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
      }, {
        { name = 'buffer' },
        { name = 'path' },
      }),
    }

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' },
      },
    })

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' },
      }, {
        { name = 'cmdline' },
      }),
      matching = { disallow_symbol_nonprefix_matching = false },
    })
  end,
}
