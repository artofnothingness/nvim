return {
  'jiaoshijie/undotree',
  dependencies = 'nvim-lua/plenary.nvim',
  config = true,
  keys = {
    { '<localleader>u', "<cmd>lua require('undotree').toggle()<cr>", '[U]ndo tree' },
  },
}
