local options = {
    number = true,	                    -- shows line number
    background = "dark",	          -- set dark background to fix colorscheme
    syntax = "enable",                     -- enable syntax highlighting
    relativenumber = true,              -- shows relative line number
    clipboard = "unnamedplus",          -- allows neovim to use system clipboard
    cursorline = true,	                -- highlights current cursor line
    mouse = "a",                        -- allows the mouse to be used in neovim
    ignorecase = true,                  -- ignore case in search patterns
    hlsearch = true,                    -- highlights search results
    splitright = true,                  -- always generate vertical split to the right
    autoindent = true,                  -- always generate vertical split to the right
    smartindent = true,                  -- always generate vertical split to the right
    expandtab = true,                   -- converts tabs to spaces
    termguicolors = true,               -- set term gui colors
    tabstop = 2,	                    -- inserts 4 spaces for each tab
    shiftwidth = 2,	                    -- inserts 4 spaces for each tab
    pumheight = 15,                     -- maximum number of suggestions in snippet
}

local commands = {
    "hi CursorLine cterm=NONE ctermbg=darkgrey",
    "colorscheme OceanicNext"
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

for _, cmd in ipairs(commands) do
    vim.cmd(cmd)
end
