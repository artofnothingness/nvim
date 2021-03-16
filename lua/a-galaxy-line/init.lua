
local gl = require('galaxyline')
local gls = gl.section
local condition = require('galaxyline.condition')
gl.short_line_list = {'NvimTree','vista','dbui','packer'}

local colors = {
  bg = '#282c34',
  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#608B4E',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
  blue = '#569CD6',
  red = '#D16969'
}

gls.left[1] = {
  RainbowRed = {
    provider = function() return '▊ ' end,
    highlight = {colors.blue,colors.bg}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                          [''] = colors.blue,V=colors.blue,
                          c = colors.magenta,no = colors.red,s = colors.orange,
                          S=colors.orange,[''] = colors.orange,
                          ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                          cv = colors.red,ce=colors.red, r = colors.cyan,
                          rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '  '
    end,
    highlight = {colors.red,colors.bg,'bold'},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
  },
}

gls.left[4] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.magenta,colors.bg,'bold'}
  }
}

gls.left[5] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg},
  },
}

gls.left[6] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg,'bold'},
  }
}

gls.left[7] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}
gls.left[8] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}

gls.left[9] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan,colors.bg},
  }
}

gls.left[10] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}

gls.mid[1] = {
  ShowLspClient = {
    provider = 'GetLspClient',
    condition = function ()
      local tbl = {['dashboard'] = true,['']=true}
      if tbl[vim.bo.filetype] then
        return false
      end
      return true
    end,
    icon = ' ☯ ',
    highlight = {colors.cyan,colors.bg,'bold'}
  }
}

gls.right[1] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.green,colors.bg,'bold'}
  }
}

gls.right[2] = {
  FileFormat = {
    provider = 'FileFormat',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.green,colors.bg,'bold'}
  }
}

gls.right[3] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.violet,colors.bg,'bold'},
  }
}

gls.right[4] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.violet,colors.bg,'bold'},
  }
}

gls.right[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.green,colors.bg},
  }
}
gls.right[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.orange,colors.bg},
  }
}
gls.right[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red,colors.bg},
  }
}

gls.right[8] = {
  RainbowBlue = {
    provider = function() return ' ▊' end,
    highlight = {colors.blue,colors.bg}
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.blue,colors.bg,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {colors.fg,colors.bg}
  }
}
-- local gl = require('galaxyline')
-- local gls = gl.section
-- gl.short_line_list = {'LuaTree','vista','dbui'}

-- local colors = {
--   bg = '#282c34',
--   yellow = '#fabd2f',
--   cyan = '#008080',
--   darkblue = '#081633',
--   green = '#608B4E',
--   orange = '#FF8800',
--   purple = '#5d4d7a',
--   magenta = '#d16d9e',
--   grey = '#c0c0c0',
--   blue = '#569CD6',
--   red = '#D16969'
-- }

-- local buffer_not_empty = function()
--   if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
--     return true
--   end
--   return false
-- end

-- gls.left[2] = {
--   ViMode = {
--     provider = function()
--       -- auto change color according the vim mode
--       local mode_color = {n = colors.purple, 
--                           i = colors.green,
--                           v = colors.blue,
--                           [''] = colors.blue,
--                           V = colors.blue,
--                           c = colors.purple,
--                           no = colors.magenta,
--                           s = colors.orange,
--                           S = colors.orange,
--                           [''] = colors.orange,
--                           ic = colors.yellow,
--                           R = colors.red,
--                           Rv = colors.red,
--                           cv = colors.red,
--                           ce=colors.red, 
--                           r = colors.cyan,
--                           rm = colors.cyan, 
--                           ['r?'] = colors.cyan,
--                           ['!']  = colors.red,
--                           t = colors.red}
--       vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color[vim.fn.mode()])
--       return '  NeoVim '
--     end,
--     separator = ' ',
--     separator_highlight = {colors.yellow,function()
--       if not buffer_not_empty() then
--         return colors.bg
--       end
--       return colors.bg
--     end},
--     highlight = {colors.grey,colors.bg,'bold'},
--   },
-- }

-- gls.left[3] = {
--   GitIcon = {
--     provider = function() return ' ' end,
--     condition = buffer_not_empty,
--     highlight = {colors.orange,colors.bg},
--   }
-- }
-- gls.left[4] = {
--   GitBranch = {
--     provider = 'GitBranch',
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     condition = buffer_not_empty,
--     highlight = {colors.grey,colors.bg},
--   }
-- }

-- local checkwidth = function()
--   local squeeze_width  = vim.fn.winwidth(0) / 2
--   if squeeze_width > 40 then
--     return true
--   end
--   return false
-- end

-- gls.left[5] = {
--   DiffAdd = {
--     provider = 'DiffAdd',
--     condition = checkwidth,
--     icon = '  ',
--     highlight = {colors.green,colors.bg},
--   }
-- }
-- gls.left[6] = {
--   DiffModified = {
--     provider = 'DiffModified',
--     condition = checkwidth,
--     icon = '  ',
--     highlight = {colors.blue,colors.bg},
--   }
-- }
-- gls.left[7] = {
--   DiffRemove = {
--     provider = 'DiffRemove',
--     condition = checkwidth,
--     icon = '  ',
--     highlight = {colors.red,colors.bg},
--   }
-- }
-- gls.left[8] = {
--   LeftEnd = {
--     provider = function() return ' ' end,
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.purple,colors.bg}
--   }
-- }
-- gls.left[9] = {
--   DiagnosticError = {
--     provider = 'DiagnosticError',
--     icon = '  ',
--     highlight = {colors.red,colors.bg}
--   }
-- }
-- gls.left[10] = {
--   Space = {
--     provider = function () return '' end
--   }
-- }
-- gls.left[11] = {
--   DiagnosticWarn = {
--     provider = 'DiagnosticWarn',
--     icon = '  ',
--     highlight = {colors.yellow,colors.bg},
--   }
-- }
-- gls.left[12] = {
--   DiagnosticHint = {
--     provider = 'DiagnosticHint',
--     icon = '   ',
--     highlight = {colors.blue,colors.bg},
--   }
-- }
-- gls.left[13] = {
--   DiagnosticInfo = {
--     provider = 'DiagnosticInfo',
--     icon = '   ',
--     highlight = {colors.orange,colors.bg},
--   }
-- }
-- gls.right[1]= {
--   FileFormat = {
--     provider = 'FileFormat',
--     separator = ' ',
--     separator_highlight = {colors.bg,colors.bg},
--     highlight = {colors.grey,colors.bg},
--   }
-- }
-- gls.right[2] = {
--   LineInfo = {
--     provider = 'LineColumn',
--     separator = ' | ',
--     separator_highlight = {colors.darkblue,colors.bg},
--     highlight = {colors.grey,colors.bg},
--   },
-- }
-- gls.right[3] = {
--   PerCent = {
--     provider = 'LinePercent',
--     separator = ' |',
--     separator_highlight = {colors.darkblue,colors.bg},
--     highlight = {colors.grey,colors.bg},
--   }
-- }
-- gls.right[4] = {
--   ScrollBar = {
--     provider = 'ScrollBar',
--     highlight = {colors.yellow,colors.purple},
--   }
-- }

-- gls.short_line_left[1] = {
--   LeftEnd = {
--     provider = function() return ' ' end,
--     separator = ' ',
--     separator_highlight = {colors.purple,colors.bg},
--     highlight = {colors.purple,colors.bg}
--   }
-- }
