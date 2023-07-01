local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local task_opts = { noremap = true, silent = false }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as the leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocaleader = " "

-- Normal mode keymaps --
-- Tab switching
keymap("n", "<M-q>", "gT", opts)
keymap("n", "<M-e>", "gt", opts)

-- Window navigation
keymap("n", "<C-Right>", "<C-w><Right>", opts)
keymap("n", "<C-Left>", "<C-w><Left>", opts)
keymap("n", "<C-Up>", "<C-w><Up>", opts)
keymap("n", "<C-Down>", "<C-w><Down>", opts)

-- Resizing
keymap("n", "<M-Up>", ":resize -2<CR>", opts)
keymap("n", "<M-Down>", ":resize +2<CR>", opts)
keymap("n", "<M-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<M-Left>", ":vertical resize +2<CR>", opts)

-- Insert mode keymaps
-- Tab switching
keymap("i", "<M-q>", "<Esc>gT", opts)
keymap("i", "<M-q>", "<Esc>gT", opts)

-- Terminal commands
-- Run build.sh
keymap("n", "<M-b>", ":!./build.sh<CR>", opts)

vim.keymap.set("n", "<Leader>pv", vim.cmd.Ex)
