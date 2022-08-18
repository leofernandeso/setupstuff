local keymap = vim.api.nvim_set_keymap

local opts = { noremap=true, silent = true }

keymap("n", "<Leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>fg", ":Telescope live_grep<CR>", opts)
