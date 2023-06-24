return {
    {'ryanoasis/vim-devicons'},
    { "dnlhc/glance.nvim"},
    { 'j-hui/fidget.nvim' },
    'psliwka/vim-smoothie',
    { 'romgrk/barbar.nvim', dependencies = { 'kyazdani42/nvim-web-devicons' } },
    { 'folke/which-key.nvim', config = function () require('plugins/cfg/which-key') end},
    { 'norcalli/nvim-colorizer.lua', config = function () require('plugins/cfg/colorizer') end},

    { 'b0o/incline.nvim' },
    { 'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }},
    { "nvim-zh/colorful-winsep.nvim" },
    { 'stevearc/dressing.nvim' },
}
