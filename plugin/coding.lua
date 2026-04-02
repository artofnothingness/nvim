vim.pack.add {
  { src = 'https://github.com/nmac427/guess-indent.nvim' },
  { src = 'https://github.com/numtostr/comment.nvim' },
}

require('Comment').setup()
require('guess-indent').setup()
