return {
  'folke/neodev.nvim',
  lazy = false,
  config = function()
    require('neodev').setup {
      library = { plugins = { 'nvim-dap-ui' }, types = true },
    }
  end,
}
