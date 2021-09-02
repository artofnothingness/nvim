require('nvim-autopairs').setup()
vim.cmd('colorscheme highlite')

vim.g.doge_enable_mappings = 0
vim.g.doge_doc_standard_python = 'google'

require('Navigator').setup({
    auto_save = 'current',
    disable_on_zoom = true
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  rainbow = {
    enable = false
  }
}
