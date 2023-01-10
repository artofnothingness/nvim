return {
  {
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd.colorscheme 'highlite'
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },

  'EdenEast/nightfox.nvim',
  'Iron-E/nvim-highlite',
  'NTBBloodbath/doom-one.nvim',
  'kdheepak/monochrome.nvim',
  'Pocco81/Catppuccino.nvim',
  'rebelot/kanagawa.nvim',
  'yashguptaz/calvera-dark.nvim',
  'mjlbach/onedark.nvim',
  'tanvirtin/monokai.nvim',
  {
    'nyoom-engineering/oxocarbon.nvim',
    config = function() end,
  },
  {
    'shmerl/neogotham',
    lazy = false, -- to make sure it's loaded on startup
    priority = 1000, -- to load before other plugins
    config = function()
      -- vim.cmd.colorscheme 'highlite'
      -- vim.cmd.colorscheme 'neogotham'
    end,
  },
}
