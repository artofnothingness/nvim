return {
  { 'norcalli/nvim-colorizer.lua', opts = {} },
  {
    'nvim-zh/colorful-winsep.nvim',
    config = true,
    event = { 'WinLeave' },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    config = function()
      require('ibl').setup {
        whitespace = {
          remove_blankline_trail = true,
        },
      }
    end,
  },
}
