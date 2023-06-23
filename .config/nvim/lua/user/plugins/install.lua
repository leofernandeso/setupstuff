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
  use "nvim-treesitter/nvim-treesitter"
  use "jiangmiao/auto-pairs"
  use "rafi/awesome-vim-colorschemes"
  use "vim-airline/vim-airline"
  use "tpope/vim-commentary"
  use "edkolev/tmuxline.vim"
  use "preservim/nerdtree"
  use 'simrat39/symbols-outline.nvim'
  use 'tpope/vim-fugitive'
  use 'github/copilot.vim'
  use {
    "nvim-telescope/telescope.nvim", tag="0.1.0", requires={ {'nvim-lua/plenary.nvim'} }
  }

--   -- completion plugins
--   use "neovim/nvim-lspconfig"
--   use "hrsh7th/cmp-path"
--   use "hrsh7th/cmp-buffer"
--   use "hrsh7th/cmp-cmdline"
--   use "hrsh7th/cmp-nvim-lsp"
--   use "hrsh7th/nvim-cmp"

--   use "hrsh7th/cmp-vsnip"
--   use "hrsh7th/vim-vsnip"

  -- easymotion like plugin
  use {
    "phaazon/hop.nvim",
    branch = 'v2',
    config = function()
      require'hop'.setup {}
    end
  }


  end
)

-- -- -- vimplug plugins, that need to be installed via vimscript calls
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('neoclide/coc.nvim', {branch = 'release'})

vim.call('plug#end')
