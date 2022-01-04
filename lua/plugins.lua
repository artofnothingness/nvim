local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
    use {'wbthomason/packer.nvim'}
    use 'folke/which-key.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'
    use 'ryanoasis/vim-devicons'

    -- Code 
    use 'neovim/nvim-lspconfig'


    use { 
      'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' 
    }
    
    use {
      'kkoomen/vim-doge', run = ':call doge#install()', config  = 
      function() 
        vim.g.doge_enable_mappings = 0
        vim.g.doge_doc_standard_python = 'google'
      end
    }

    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      }
    }

    -- >> Look 
    use 'norcalli/nvim-colorizer.lua'
    use 'romgrk/barbar.nvim'
    use 'psliwka/vim-smoothie'
    use 'glepnir/dashboard-nvim'
    use {'windwp/windline.nvim', config = function() require('wlsample.evil_line') end}
    -- << Look 

    -- >> Themes
    use 'Iron-E/nvim-highlite'
    use 'folke/tokyonight.nvim'
    use 'NTBBloodbath/doom-one.nvim'
    use 'kdheepak/monochrome.nvim'
    use "Pocco81/Catppuccino.nvim"
    -- << Themes

    use "PotatoesMaster/i3-vim-syntax"

    use { 
      'kevinhwang91/rnvimr', config = 
      function()
        vim.g.rnvimr_enable_ex = 1
        vim.g.rnvimr_enable_picker = 1
        vim.g.rnvimr_draw_border = 1
        vim.g.rnvimr_hide_gitignore = 1
        vim.g.rnvimr_border_attr = {['fg'] = -1, ['bg'] =  -1}
        vim.g.rnvimr_enable_bw = 1

        vim.cmd("highlight link RnvimrNormal CursorLine")

        vim.g.rnvimr_action = {
          ['<C-t>']  = 'NvimEdit tabedit',
          ['<C-h>']  = 'NvimEdit split',
          ['<C-v>']  = 'NvimEdit vsplit',
          ['gb']     = 'JumpNvimCwd',
          ['cd']     = 'EmitRangerCwd'
        }
      end
    }  


    use 'mbbill/undotree'

    -- Navigation 
    use {
      'unblevable/quick-scope', config = 
      function()
        vim.g.qs_highlight_on_keys = {'f', 'F', 'T', 'T'}
        vim.g.qs_max_chars=150
      end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }


    use {'phaazon/hop.nvim' , config = 
      function()
        require'hop'.setup()
      end
    }

    use {'numToStr/Navigator.nvim' , config = 
      function()
        require('Navigator').setup({
            auto_save = 'current',
            disable_on_zoom = true
        })
      end
    }

    use {'windwp/nvim-autopairs', config = 
      function() require('nvim-autopairs').setup() end
    }

    use 'tpope/vim-commentary'
    use 'szw/vim-maximizer'
    use 'godlygeek/tabular'

    -- << Git
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    -- >> Git

    use 'windwp/nvim-spectre'
end)
