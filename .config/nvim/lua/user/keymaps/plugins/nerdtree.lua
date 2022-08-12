local opts = { noremap=true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Hop keymaps with leader key
keymap("n", "<leader><leader>", ":NERDTreeToggle<CR>", opts)
