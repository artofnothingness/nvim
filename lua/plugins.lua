local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim'}
    use 'folke/which-key.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {'kkoomen/vim-doge', run = ':call doge#install()'}
    use 'romgrk/barbar.nvim'
    use 'Iron-E/nvim-highlite'
    use 'kdheepak/monochrome.nvim'
    use "PotatoesMaster/i3-vim-syntax"
    use 'kevinhwang91/rnvimr'
    use 'dhruvasagar/vim-table-mode'
    use 'mzlogin/vim-markdown-toc'
    use 'mbbill/undotree'
    use 'phaazon/hop.nvim'
    use 'numToStr/Navigator.nvim' 
    use 'airblade/vim-rooter'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use 'windwp/nvim-autopairs'
    use 'tpope/vim-commentary'
    use 'szw/vim-maximizer'
    use 'lambdalisue/suda.vim'
    use 'godlygeek/tabular'

    use 'windwp/nvim-spectre'
end)
