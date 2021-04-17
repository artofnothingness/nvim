vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 0
vim.g.mkdp_refresh_slow = 1
vim.g.mkdp_command_for_global = 0
vim.g.mkdp_browser = 'google-chrome'
vim.g.mkdp_echo_preview_url = 0

vim.g.mkdp_preview_options = {
      ['mkit'] = {},
      ['katex'] ={},
      ['uml'] = {},
      ['maid'] = {},
      ['disable_sync_scroll'] = 0,
      ['sync_scroll_type'] = 'middle',
      ['hide_yaml_meta'] = 1,
      ['sequence_diagrams'] = {},
      ['flowchart_diagrams'] = {},
      ['content_editable'] = false,
      ['disable_filename'] = 0
     }

vim.g.mkdp_page_title = '「${name}」'
vim.g.mkdp_filetypes = {'markdown', 'md'}
