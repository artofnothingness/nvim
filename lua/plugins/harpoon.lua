return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    local extensions = require 'harpoon.extensions'

    harpoon:setup()
    harpoon:extend(extensions.builtins.navigate_with_number())

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = 'Harpoon [A]dd' })
    vim.keymap.set('n', '<leader><leader>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[ ] Harpoon select' })
  end,
  dependencies = { 'nvim-lua/plenary.nvim' },
}
