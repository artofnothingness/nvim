return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    local extensions = require 'harpoon.extensions'

    harpoon:setup()
    harpoon:extend(extensions.builtins.navigate_with_number())

    vim.keymap.set('n', '~', function()
      harpoon:list():add()
    end, { desc = 'Harpoon Add' })
    vim.keymap.set('n', '`', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon select' })
  end,
  dependencies = { 'nvim-lua/plenary.nvim' },
}
