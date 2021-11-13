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
    use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons", config = function() require("trouble").setup {} end}
    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'kosayoda/nvim-lightbulb'
    use {'ray-x/lsp_signature.nvim', config = 
      function()
        require'lsp_signature'.on_attach()
      end}

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    
    use {'kkoomen/vim-doge', run = ':call doge#install()', config  = 
      function() 
        vim.g.doge_enable_mappings = 0
        vim.g.doge_doc_standard_python = 'google'
      end}

    use "rafamadriz/friendly-snippets"

    use {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-vsnip",
        "f3fora/cmp-spell",
      }
    }

    use "stevearc/aerial.nvim" 
    use { 'liuchengxu/vista.vim', config = "vim.g.vista_sidebar_width=50" }  

    -- Look 
    use 'norcalli/nvim-colorizer.lua'
    use 'romgrk/barbar.nvim'
    use 'psliwka/vim-smoothie'
    use 'preservim/tagbar'
    use 'glepnir/dashboard-nvim'
    -- use {'windwp/windline.nvim', config = function() require('wlsample.evil_line') end}


    -- Themes
    use 'Iron-E/nvim-highlite'
    use 'folke/tokyonight.nvim'
    use 'NTBBloodbath/doom-one.nvim'
    use 'kdheepak/monochrome.nvim'
    use "Pocco81/Catppuccino.nvim"
    use {'tanvirtin/monokai.nvim' , config = 
    function()
      require('monokai')
    end}

    -- Addons 
    use "PotatoesMaster/i3-vim-syntax"
    use "jbyuki/venn.nvim"
    

    use 'kevinhwang91/rnvimr'
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
    use 'dhruvasagar/vim-table-mode'
    use 'voldikss/vim-floaterm'
    use 'mzlogin/vim-markdown-toc'
    use 'mbbill/undotree'
    use 'akinsho/nvim-toggleterm.lua'
    use { 'michaelb/sniprun', run = 'bash ./install.sh', config= function() require'sniprun'.initial_setup() end}

    use { 
        "vhyrro/neorg",
        config = function()
            require('neorg').setup {
                -- Tell Neorg what modules to load
                load = {
                    ["core.defaults"] = {}, -- Load all the default modules
                    ["core.keybinds"] = { -- Configure core.keybinds
                      config = {
                        default_keybinds = true, -- Generate the default keybinds
                        neorg_leader = "<Leader>o" -- This is the default if unspecified
                      }
                    },
                    ["core.norg.concealer"] = {}, -- Allows for use of icons
                    ["core.norg.dirman"] = { -- Manage your directories with Neorg
                      config = {
                        workspaces = {
                          my_workspace = "~/Documents/Notes/neorg"
                        }
                      }
                    },
                    ["core.norg.completion"] = {
                      config = {
                        engine = "nvim-cmp"
                      }
                    }
                },
            }
        end,
        requires = "nvim-lua/plenary.nvim"
    }

    -- Navigation 
    use {'unblevable/quick-scope', config = 
      function()
        vim.g.qs_highlight_on_keys = {'f', 'F', 'T', 'T'}
        vim.g.qs_max_chars=150
      end}

    use 'airblade/vim-rooter'
    use { 'nvim-telescope/telescope-project.nvim', config = function() require'telescope'.load_extension('project') end}

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use 'phaazon/hop.nvim'
    use {'numToStr/Navigator.nvim' , config = 
      function()
        require('Navigator').setup({
            auto_save = 'current',
            disable_on_zoom = true
        })
      end}

    use {'windwp/nvim-autopairs', config = 
      function() require('nvim-autopairs').setup() end}

    use 'tpope/vim-commentary'
    use 'szw/vim-maximizer'
    use 'lambdalisue/suda.vim'
    use 'godlygeek/tabular'

    -- Git
    use {'TimUntersberger/neogit', config = 
      function() 
        require("neogit").setup {
          disable_signs = false,
          disable_context_highlighting = false,
        }
      end}

    use 'lewis6991/gitsigns.nvim'

    use {'f-person/git-blame.nvim', config =
      function() 
        vim.cmd('highlight default link gitblame SpecialComment')
        vim.g.gitblame_enabled = 0
      end}

    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'windwp/nvim-spectre'

    use {'mfussenegger/nvim-lint' , config = 
    function()
      require('lint').linters_by_ft = {
        cpp = {'cppcheck',}
      }
      -- vim.cmd('au BufWritePost <buffer> lua require("lint").try_lint()')

    end}
    use 'olimorris/onedarkpro.nvim'

    use {"luukvbaal/stabilize.nvim", config = 
    function() require("stabilize").setup() end}

    use "wuelnerdotexe/vim-enfocado"
end)
