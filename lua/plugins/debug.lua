return {
  {
    'mfussenegger/nvim-dap',

    dependencies = {
      'williamboman/mason.nvim',
    },
    config = function()
      local dap = require 'dap'

      dap.adapters.codelldb = {
        type = 'server',
        port = '${port}',
        executable = {
          command = 'codelldb',
          args = { '--port', '${port}' },
        },
      }

      dap.configurations.cpp = {
        {
          name = 'ROS 2 attach {pkg} {executble}',
          type = 'codelldb',
          request = 'attach',
          program = function()
            return require('modules.ros2').get_executable_path(vim.fn.input('ros2 attach {pkg} {executable}: ', ''))
          end,
          stopOnEntry = true,
          waitFor = true,
          cwd = '${workspaceFolder}',
        },
        {
          name = 'Run executable',
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
      vim.keymap.set('n', '<leader>cdb', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
      vim.keymap.set('n', '<leader>cdB', function()
        dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end, { desc = 'Debug: Set Breakpoint Condition' })

      vim.keymap.set('n', '<F10>', "<cmd>DapViewToggle<CR>", { desc = 'Debug: toggle' })
    end,
  },
}
