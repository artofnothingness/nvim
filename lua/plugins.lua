local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]


return require('packer').startup(
function()

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
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
  }
}

-- >> Look 
use 'norcalli/nvim-colorizer.lua'
use 'romgrk/barbar.nvim'
use 'psliwka/vim-smoothie'
use 'glepnir/dashboard-nvim'

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function()
    require('lualine').setup()
  end

}

use {
 "lukas-reineke/indent-blankline.nvim",
  config = function()
    -- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
    -- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
    -- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
    -- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
    -- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
    -- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

    -- vim.opt.list = true
    -- vim.opt.listchars:append("space:⋅")
    -- vim.opt.listchars:append("eol:↴")

    -- require("indent_blankline").setup {
    --     show_trailing_blankline_indent = false,
    --     space_char_blankline = " ",
    --     char_highlight_list = {
    --         "IndentBlanklineIndent1",
    --         "IndentBlanklineIndent2",
    --         "IndentBlanklineIndent3",
    --         "IndentBlanklineIndent4",
    --         "IndentBlanklineIndent5",
    --         "IndentBlanklineIndent6",
    --     },
    -- }

    require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
        show_trailing_blankline_indent = false,
    }
  end

}
-- << Look 

-- >> Themes
use 'Iron-E/nvim-highlite'
use 'folke/tokyonight.nvim'
use 'NTBBloodbath/doom-one.nvim'
use 'kdheepak/monochrome.nvim'
use "Pocco81/Catppuccino.nvim"
use "rebelot/kanagawa.nvim"
use 'yashguptaz/calvera-dark.nvim'
use 'mjlbach/onedark.nvim' -- Theme inspired by Atom
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
use 'nvim-treesitter/nvim-treesitter-textobjects'

-- << Git
use 'lewis6991/gitsigns.nvim'
use 'tpope/vim-fugitive'
use 'tpope/vim-rhubarb'
-- >> Git

use 'windwp/nvim-spectre'
use 'kyazdani42/nvim-tree.lua'
use 'rhysd/vim-clang-format'
--
-- Lua
use {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use {
    'liuchengxu/vista.vim',
    config = function()
      vim.g.vista_sidebar_width=40 
      vim.g.vista_default_executive="nvim_lsp"
    end
}

use {
    'j-hui/fidget.nvim',
    config = function()
      require"fidget".setup{}
    end
}

use 'p00f/clangd_extensions.nvim'

end)
