local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- Bootstraping packer if needed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]

-- Init
local packer = require('packer')
local util = require('packer.util')
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

--- startup and add configure plugins
packer.startup(function()
  local use = use

  use "wbthomason/packer.nvim"
  use "rstacruz/vim-closer"
  use "nvim-treesitter/nvim-treesitter"
  use "rafi/awesome-vim-colorschemes"
  use "vim-airline/vim-airline"
  use "tpope/vim-commentary"
  use "edkolev/tmuxline.vim"


  end
)
