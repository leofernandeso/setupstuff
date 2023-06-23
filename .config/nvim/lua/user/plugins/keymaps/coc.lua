-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Hop keymaps with leader key
keymap("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- Ugly vim.cmd adaptation. Migrate fully to lua later
vim.cmd(
    [[
        inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"       
    ]]
)
