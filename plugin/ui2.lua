require('vim._core.ui2').enable {
  enable = true,
  msg = {
    targets = {
      [''] = 'msg',
      empty = 'cmd',
      default = 'msg',
      progress = 'msg',
      bufwrite = 'msg',
      confirm = 'cmd',
      emsg = 'pager',
      echo = 'msg',
      echomsg = 'msg',
      echoerr = 'pager',
      completion = 'cmd',
      list_cmd = 'pager',
      lua_error = 'pager',
    },
    msg = { height = 0.5 },
    pager = { height = 0.999 },
    dialog = { height = 0.5 },
  },
}

vim.o.messagesopt = vim.o.messagesopt .. ',timeout:4000'
vim.o.cmdheight = 0
