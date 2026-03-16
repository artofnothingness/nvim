return {
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
