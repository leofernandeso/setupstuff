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
  use {
    "preservim/nerdtree",
    requires = {
      {"Xuyuanp/nerdtree-git-plugin"},
      {"ryanoasis/vim-devicons"}
    }
  }
  use 'simrat39/symbols-outline.nvim'
  use 'tpope/vim-fugitive'
  use {
    "nvim-telescope/telescope.nvim", tag="0.1.0", requires={ {'nvim-lua/plenary.nvim'} }
  }

  -- easymotion like plugin
  use {
    "phaazon/hop.nvim",
    branch = 'v2',
    config = function()
      require'hop'.setup {}
    end
  }

  -- undotree
  use {
    "mbbill/undotree",
  }


  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- copilot
  use 'github/copilot.vim'

  -- pretty bars
  use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
  use 'romgrk/barbar.nvim'

  -- gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

end
)
