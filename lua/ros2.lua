local M = {}

function M.get_executable_path(input)
  local args = {}
  for arg in input:gmatch '%S+' do
    args[#args + 1] = arg
  end

  local pkg = ''
  local node = ''

  if #args > 2 or #args == 0 then
    return ''
  elseif #args == 1 then
    node = args[1]
  elseif #args == 2 then
    pkg = args[1]
    node = args[2]
  end

  local function capture(cmd, raw)
    local f = assert(io.popen(cmd, 'r'))
    local s = assert(f:read '*a')
    f:close()
    if raw then
      return s
    end
    s = string.gsub(s, '^%s+', '')
    s = string.gsub(s, '%s+$', '')
    s = string.gsub(s, '[\n\r]+', ' ')
    return s
  end

  return capture(string.format('ros2 pkg executables --full-path %s | grep %s', pkg, node), false)
end

return M
