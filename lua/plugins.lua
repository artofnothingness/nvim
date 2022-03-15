
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
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
    vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
    vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
   
    -- vim.opt.list = true
    -- vim.opt.listchars:append("space:⋅")
    -- vim.opt.listchars:append("eol:↴")
    

    vim.g.indent_blankline_filetype_exclude = {
      "lspinfo",
      "packer",
      "checkhealth",
      "help",
      'dashboard'
    }
    require("indent_blankline").setup {
        show_trailing_blankline_indent = false,
        space_char_blankline = " ",
        char_highlight_list = {
            "IndentBlanklineIndent1",
            "IndentBlanklineIndent2",
            "IndentBlanklineIndent3",
            "IndentBlanklineIndent4",
            "IndentBlanklineIndent5",
            "IndentBlanklineIndent6",
        },
     }

    -- require("indent_blankline").setup {
    --     space_char_blankline = " ",
    --     show_current_context = true,
    --     show_current_context_start = true,
    --     show_trailing_blankline_indent = false,
    -- }
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
use 'tanvirtin/monokai.nvim'
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
use 'dhruvasagar/vim-table-mode'


use {
  'rlane/pounce.nvim',
  config = function()
    require'pounce'.setup{
      accept_keys = "JFKDLSAHGNUVRBYTMICEOXWPQZ",
      accept_best_key = "<enter>",
      multi_window = true,
      debug = false,
    }
  end
}

use {
 'elihunter173/dirbuf.nvim',
  config = function()
  require("nvim-tree").setup {
    update_to_buf_dir = { enable = false }
  }
  end
}

use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v1.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim" 
    },
    config = function ()
      -- See ":help neo-tree-highlights" for a list of available highlight groups
      vim.cmd([[
        hi link NeoTreeDirectoryName Directory
        hi link NeoTreeDirectoryIcon NeoTreeDirectoryName
      ]])

      require("neo-tree").setup({
        close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        default_component_configs = {
          indent = {
            indent_size = 2,
            padding = 1, -- extra padding on left hand side
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
          },
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "ﰊ",
            default = "*",
          },
          name = {
            trailing_slash = false,
            use_git_status_colors = true,
          },
          git_status = {
            highlight = "NeoTreeDimText", -- if you remove this the status will be colorful
          },
        },
        filesystem = {
          filters = { --These filters are applied to both browsing and searching
            show_hidden = false,
            respect_gitignore = true,
          },
          follow_current_file = false, -- This will find and focus the file in the active buffer every
                                       -- time the current file is changed while the tree is open.
          use_libuv_file_watcher = false, -- This will use the OS level file watchers
                                          -- to detect changes instead of relying on nvim autocmd events.
          hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                                                  -- in whatever position is specified in window.position
                                -- "open_split",  -- netrw disabled, opening a directory opens within the
                                                  -- window like netrw would, regardless of window.position
                                -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
          window = {
            position = "left",
            width = 40,
            mappings = {
              ["<2-LeftMouse>"] = "open",
              ["l"] = "open",
              ["<cr>"] = "open",
              ["S"] = "open_split",
              ["s"] = "open_vsplit",
              ["h"] = "close_node",
              ["C"] = "close_node",
              ["<bs>"] = "navigate_up",
              ["."] = "set_root",
              ["H"] = "toggle_hidden",
              ["I"] = "toggle_gitignore",
              ["R"] = "refresh",
              ["/"] = "fuzzy_finder",
              --["/"] = "filter_as_you_type", -- this was the default until v1.28
              --["/"] = "none" -- Assigning a key to "none" will remove the default mapping
              ["f"] = "filter_on_submit",
              ["<c-x>"] = "clear_filter",
              ["a"] = "add",
              ["d"] = "delete",
              ["r"] = "rename",
              ["c"] = "copy_to_clipboard",
              ["x"] = "cut_to_clipboard",
              ["p"] = "paste_from_clipboard",
              ["M"] = "move", -- takes text input for destination
              ["q"] = "close_window",
            }
          }
        },
        buffers = {
          show_unloaded = true,
          window = {
            position = "left",
            mappings = {
              ["l"] = "open",
              ["<2-LeftMouse>"] = "open",
              ["<cr>"] = "open",
              ["S"] = "open_split",
              ["s"] = "open_vsplit",
              ["<bs>"] = "navigate_up",
              ["."] = "set_root",
              ["R"] = "refresh",
              ["a"] = "add",
              ["d"] = "delete",
              ["r"] = "rename",
              ["c"] = "copy_to_clipboard",
              ["x"] = "cut_to_clipboard",
              ["p"] = "paste_from_clipboard",
              ["bd"] = "buffer_delete",
            }
          },
        },
        git_status = {
          window = {
            position = "float",
            mappings = {
              ["l"] = "open",
              ["<2-LeftMouse>"] = "open",
              ["<cr>"] = "open",
              ["h"] = "close_node",
              ["S"] = "open_split",
              ["s"] = "open_vsplit",
              ["C"] = "close_node",
              ["R"] = "refresh",
              ["d"] = "delete",
              ["r"] = "rename",
              ["c"] = "copy_to_clipboard",
              ["x"] = "cut_to_clipboard",
              ["p"] = "paste_from_clipboard",
              ["A"]  = "git_add_all",
              ["gu"] = "git_unstage_file",
              ["ga"] = "git_add_file",
              ["gr"] = "git_revert_file",
              ["gc"] = "git_commit",
              ["gp"] = "git_push",
              ["gg"] = "git_commit_and_push",
            }
          }
        }
      })
      vim.cmd([[nnoremap \ :NeoTreeRevealToggle<cr>]])
    end
}

if packer_bootstrap then
  require('packer').sync()
end

end)
