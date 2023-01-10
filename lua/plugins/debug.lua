return {
  {
    'mfussenegger/nvim-dap',

    dependencies = {
      'rcarriga/nvim-dap-ui',
      'williamboman/mason.nvim',
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'

      dap.adapters.python = function(cb, config)
        if config.request == 'attach' then
          local port = (config.connect or config).port
          local host = (config.connect or config).host or '127.0.0.1'
          cb {
            type = 'server',
            port = assert(port, '`connect.port` is required for a python `attach` configuration'),
            host = host,
            options = {
              source_filetype = 'python',
            },
          }
        else
          cb {
            type = 'executable',
            command = vim.fn.exepath 'debugpy-adapter',
            options = {
              source_filetype = 'python',
            },
          }
        end
      end

      dap.adapters.codelldb = {
        type = 'server',
        port = '${port}',
        executable = {
          command = 'codelldb',
          args = { '--port', '${port}' },
        },
      }

      dap.configurations.python = {
        {
          type = 'python',
          request = 'launch',
          name = 'Launch file',

          program = '${file}',
          pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
              return cwd .. '/venv/bin/python'
            elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
              return cwd .. '/.venv/bin/python'
            elseif vim.fn.executable '/usr/bin/python3' then
              return '/usr/bin/python3'
            else
              return '/usr/bin/python'
            end
          end,
        },
      }

      dap.configurations.cpp = {
        {
          name = 'LLDB: ros2 attach wait',
          type = 'codelldb',
          request = 'attach',
          program = function()
            return require('modules.ros2').get_executable_path(vim.fn.input('ros2 attach {pkg} {executable}', ''))
          end,
          stopOnEntry = false,
          waitFor = true,
          cwd = '${workspaceFolder}',
        },
        {
          name = 'LLDB: ros2 attach',
          type = 'codelldb',
          request = 'attach',
          program = function()
            return require('modules.ros2').get_executable_path(vim.fn.input('ros2 attach {pkg} {executable}', ''))
          end,
          stopOnEntry = true,
          waitFor = false,
          cwd = '${workspaceFolder}',
        },
        {
          name = 'LLDB: attach wait',
          type = 'codelldb',
          request = 'attach',
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          stopOnEntry = false,
          waitFor = true,
          cwd = '${workspaceFolder}',
        },
        {
          name = 'LLDB: attach',
          type = 'codelldb',
          request = 'attach',
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          stopOnEntry = true,
          waitFor = false,
          cwd = '${workspaceFolder}',
        },
        {
          name = 'LLDB: launch',
          type = 'codelldb',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          stopOnEntry = false,
          cwd = '${workspaceFolder}',
        },
      }

      vim.fn.sign_define('DapBreakpoint', { text = '', texthl = '', linehl = '', numhl = '' })
      vim.fn.sign_define('DapBreakpointCondition', { text = 'ﳁ', texthl = '', linehl = '', numhl = '' })
      vim.fn.sign_define('DapBreakpointRejected', { text = '', texthl = '', linehl = '', numhl = '' })
      vim.fn.sign_define('DapLogPoint', { text = '', texthl = '', linehl = '', numhl = '' })
      vim.fn.sign_define('DapStopped', { text = '', texthl = '', linehl = '', numhl = '' })

      vim.keymap.set('n', '<F5>', dap.continue, { desc = 'Debug: Start/Continue' })
      vim.keymap.set('n', '<F6>', dap.step_into, { desc = 'Debug: Step Into' })
      vim.keymap.set('n', '<F7>', dap.step_over, { desc = 'Debug: Step Over' })
      vim.keymap.set('n', '<F8>', dap.step_out, { desc = 'Debug: Step Out' })
      vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
      vim.keymap.set('n', '<leader>dB', function()
        dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end, { desc = 'Debug: Set Breakpoint Condition' })

      dapui.setup {}

      vim.keymap.set('n', '<F10>', dapui.toggle, { desc = 'Debug: toggle' })
    end,
  },
  { 'rcarriga/nvim-dap-ui', dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' } },

  { 'theHamsta/nvim-dap-virtual-text', config = true },
}
