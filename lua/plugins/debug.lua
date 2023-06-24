return {
    { "williamboman/mason.nvim" },
    { 
        'mfussenegger/nvim-dap', 
        config = function () require('plugins/cfg/dap') end,
        keys = {
            {'<F5>', '<cmd>DapContinue<CR>'},
            {'<F9>', '<cmd>DapStepOut<CR>'},
            {'<F10>', '<cmd>DapStepOver<CR>'},
            {'<F11>', '<cmd>DapStepInto<CR>'},
            {'<F12>', '<cmd>DapTerminate<CR>'},
            {'<F12>', '<cmd>DapTerminate<CR>'},
        }
    },
    { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" }, config = function () require('plugins/cfg/dap-ui') end},

}

