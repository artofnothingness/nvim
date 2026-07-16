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
    cmd = { height = 0.5 },
    msg = { height = 0.5, timeout = 4000 },
    pager = { height = 0.999 },
    dialog = { height = 0.5 },
  },
}

vim.o.cmdheight = 0
