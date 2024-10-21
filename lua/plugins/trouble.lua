return {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>wd",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Workspace Diagnostics",
    },
    {
      "<leader>dd",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Document Diagnostics",
    },
  },
}
