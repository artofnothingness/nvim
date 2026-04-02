vim.pack.add { 'https://github.com/lukas-reineke/indent-blankline.nvim' }

require('ibl').setup {
  whitespace = {
    remove_blankline_trail = true,
  },
}
