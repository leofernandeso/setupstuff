local options = {
    number = true,	                    -- shows line number
    relativenumber = true,              -- shows relative line number
    clipboard = "unnamedplus",          -- allows neovim to use system clipboard
    cursorline = true,	                -- highlights current cursor line
    mouse = "a",                        -- allows the mouse to be used in neovim
    ignorecase = true,                  -- ignore case in search patterns
    hlsearch = true,                    -- highlights search results
    splitright = true,                  -- always generate vertical split to the right
    expandtab = true,                   -- converts tabs to spaces
    tabstop = 4,	                    -- inserts 4 spaces for each tab
    shiftwidth = 4,                     -- number of spaces in identation
}

local commands = {
    "hi CursorLine cterm=NONE ctermbg=darkgrey",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

for _, cmd in ipairs(commands) do
    vim.cmd(cmd)
end
