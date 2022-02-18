-- init.lua

-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  disable_netrw        = true,
  hijack_netrw         = true,
  open_on_setup        = false,
  ignore_ft_on_setup   = {},
  auto_close           = false,
  auto_reload_on_write = true,
  open_on_tab          = false,
  hijack_cursor        = false,
  update_cwd           = true,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 40,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = true,
      list = {
        { key = {"<CR>", "l", "<2-LeftMouse>"}, action = "edit" },
        { key = "l",                        action = "preview" },
        { key = {"<2-RightMouse>", "<C-]>"},    action = "cd" },
        { key = {"O"},                          action = "edit_no_picker" },
        { key = "<C-v>",                        action = "vsplit" },
        { key = "<C-x>",                        action = "split" },
        { key = "<C-t>",                        action = "tabnew" },
        { key = "<",                            action = "prev_sibling" },
        { key = ">",                            action = "next_sibling" },
        { key = "P",                            action = "parent_node" },
        { key = {"h"},                          action = "close_node" },
        { key = "K",                            action = "first_sibling" },
        { key = "J",                            action = "last_sibling" },
        { key = "I",                            action = "toggle_ignored" },
        { key = "H",                            action = "toggle_dotfiles" },
        { key = "R",                            action = "refresh" },
        { key = "a",                            action = "create" },
        { key = "d",                            action = "remove" },
        { key = "D",                            action = "trash" },
        { key = "r",                            action = "rename" },
        { key = "<C-r>",                        action = "full_rename" },
        { key = "x",                            action = "cut" },
        { key = "c",                            action = "copy" },
        { key = "p",                            action = "paste" },
        { key = "y",                            action = "copy_name" },
        { key = "Y",                            action = "copy_path" },
        { key = "gy",                           action = "copy_absolute_path" },
        { key = "[c",                           action = "prev_git_item" },
        { key = "]c",                           action = "next_git_item" },
        { key = "-",                            action = "dir_up" },
        { key = "s",                            action = "system_open" },
        { key = "q",                            action = "close" },
        { key = "g?",                           action = "toggle_help" },
      }
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      global = false,
    },
    open_file = {
      quit_on_open = false,
    }
  }
}
