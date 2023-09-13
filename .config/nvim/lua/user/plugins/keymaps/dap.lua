-- Keybindings
local set_keymap = vim.api.nvim_set_keymap
local opts = { noremap=true, silent=true }

-- Start/Continue
set_keymap('n', '<F5>', '<Cmd>lua require"dap".continue()<CR>', opts)

-- Terminate
set_keymap('n', '<S-F5>', '<Cmd>lua require"dap".terminate()<CR>', opts)

-- Toggle Breakpoint
set_keymap('n', '<F9>', '<Cmd>lua require"dap".toggle_breakpoint()<CR>', opts)

-- Step Over
set_keymap('n', '<F10>', '<Cmd>lua require"dap".step_over()<CR>', opts)

-- Step Into
set_keymap('n', '<F11>', '<Cmd>lua require"dap".step_into()<CR>', opts)

-- Step Out
set_keymap('n', '<S-F11>', '<Cmd>lua require"dap".step_out()<CR>', opts)
