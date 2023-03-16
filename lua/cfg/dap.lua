local dap = require('dap')

dap.adapters.cppdbg = {
    id = 'cppdbg',
    type = 'executable',
    command = vim.fn.stdpath 'data' .. '/mason/bin/OpenDebugAD7',
}

local function BuildArray(generator)
    local arr = {}
    for v in generator do
        arr[#arr + 1] = v
    end
    return arr
end

local function parse_launch_args(path)
 local file = io.open(path, "r")
 local content = file:read "*a"
 local parsed_content = BuildArray(string.gmatch(content, "%S+"))
 local executable = table.remove(parsed_content, 1)
 return execuable, parsed_content 
end


vim.g.launch_text_file = nil 

dap.configurations.cpp = {
    {
        name = "Launch",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        args = {},
        stopAtEntry = true,
        setupCommands = {
            {
                text = '-enable-pretty-printing',
                description = 'enable pretty printing',
                ignoreFailures = false
            },
        },
    }
}


-- vim.api.nvim_set_hl(0, "blue",   { fg = "#3d59a1" })
-- vim.api.nvim_set_hl(0, "green",  { fg = "#9ece6a" })
-- vim.api.nvim_set_hl(0, "yellow", { fg = "#FFFF00" })
-- vim.api.nvim_set_hl(0, "orange", { fg = "#f09000" })
--
-- vim.fn.sign_define('DapBreakpoint',          { text='•', texthl='blue',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
-- vim.fn.sign_define('DapBreakpointCondition', { text='•', texthl='blue',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
-- vim.fn.sign_define('DapBreakpointRejected',  { text='•', texthl='orange', linehl='DapBreakpoint', numhl='DapBreakpoint' })
-- vim.fn.sign_define('DapStopped',             { text='•', texthl='green',  linehl='DapBreakpoint', numhl='DapBreakpoint' })
-- vim.fn.sign_define('DapLogPoint',            { text='•', texthl='yellow', linehl='DapBreakpoint', numhl='DapBreakpoint' })
