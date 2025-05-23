return {
  'mfussenegger/nvim-dap',
  dependencies = {
      'rcarriga/nvim-dap-ui',
      'nvim-neotest/nvim-nio'
  },
  config = function()
    local dap = require('dap')
    local dapui = require('dapui')

    require('dapui').setup()
    -- require('dap-go').setup() -- example for go. need different plugin for each lang?

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    -- vim.keymap.set('n', '<leader>gdb', dap.toggle_breakpoint, {})
    -- vim.keymap.set('n', '<leader>gdc', dap.continue, {})
  end,
}
