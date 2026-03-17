local dap = require('dap')
local dapui = require('dapui')

require('mason-nvim-dap').setup({
  ensure_installed = { 'php' },
})

dap.adapters.php = {
  type = 'executable',
  command = vim.fn.stdpath('data') .. '/mason/bin/php-debug-adapter',
}

-- Debug configurations shown in the picker (<leader>dc)
dap.configurations.php = {
  {
    name = 'Listen for Xdebug',
    type = 'php',
    request = 'launch',
    port = 9003,
  },
  {
    name = 'Listen for Xdebug (Docker Spryker)',
    type = 'php',
    request = 'launch',
    port = 9003,
    pathMappings = {
      ['/data'] = '/home/user/projects/spryker',
    },
  },
}

-- DAP UI: auto-open on session start, auto-close on session end
dapui.setup()

dap.listeners.after.event_initialized['dapui_config'] = function()
  dapui.open()
end
dap.listeners.before.event_terminated['dapui_config'] = function()
  dapui.close()
end
dap.listeners.before.event_exited['dapui_config'] = function()
  dapui.close()
end

-- Keymaps
local map = function(keys, func, desc)
  vim.keymap.set('n', keys, func, { desc = desc })
end

map('<leader>dc', dap.continue,          'Debug: Continue')
map('<leader>dn', dap.step_over,         'Debug: Step Over')
map('<leader>di', dap.step_into,         'Debug: Step Into')
map('<leader>do', dap.step_out,          'Debug: Step Out')
map('<leader>db', dap.toggle_breakpoint, 'Debug: Toggle Breakpoint')
map('<leader>dB', function()
  dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
end, 'Debug: Conditional Breakpoint')
map('<leader>dr', dap.repl.open,         'Debug: Open REPL')
map('<leader>dl', dap.run_last,          'Debug: Run Last')
map('<leader>dt', dapui.toggle,          'Debug: Toggle UI')
