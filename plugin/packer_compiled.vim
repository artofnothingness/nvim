" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["i3-vim-syntax.git"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/i3-vim-syntax.git"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    path = "/home/alex/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["material.vim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/material.vim"
  },
  neogit = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  nvim_utils = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim_utils"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  rnvimr = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  tabular = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/tabular"
  },
  tagbar = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/tagbar"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-clang-format"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-clang-format"
  },
  ["vim-commentary.git"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-commentary.git"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-markdown-toc"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-nightfly-guicolors"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-table-mode"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vista.vim"
  }
}


-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file MarkdownPreview lua require("packer.load")({'markdown-preview.nvim'}, { cmd = "MarkdownPreview", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
