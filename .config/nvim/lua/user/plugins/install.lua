local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- Bootstraping packer if needed
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end
vim.cmd([[packadd packer.nvim]])

-- Init
local packer = require("packer")
local util = require("packer.util")
packer.init({
	package_root = util.join_paths(vim.fn.stdpath("data"), "site", "pack"),
})

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

--- startup and add configure plugins
packer.startup(function()
	local use = use

	use("wbthomason/packer.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("vim-airline/vim-airline")
	use("rafi/awesome-vim-colorschemes")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-lualine/lualine.nvim")
	use("tpope/vim-commentary")
	use("edkolev/tmuxline.vim")
	use({
		"preservim/nerdtree",
		requires = {
			{ "Xuyuanp/nerdtree-git-plugin" },
			{ "ryanoasis/vim-devicons" },
		},
	})
	use("simrat39/symbols-outline.nvim")
	use("tpope/vim-fugitive")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- easymotion like plugin
	use({
		"phaazon/hop.nvim",
		branch = "v2",
		config = function()
			require("hop").setup({})
		end,
	})

	-- undotree
	use({
		"mbbill/undotree",
	})

	-- LSP
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "RRethy/vim-illuminate" })

	-- Autocompletion
	use({ "hrsh7th/nvim-cmp" })
	use({ "hrsh7th/cmp-buffer" })
	use({ "hrsh7th/cmp-path" })
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })
	use({ "L3MON4D3/LuaSnip" })

	-- Snippets
	use({ "saadparwaiz1/cmp_luasnip" })
	use({ "rafamadriz/friendly-snippets" })

	-- Trouble
	use({ "folke/trouble.nvim" })

	-- Autopairs
	use({ "windwp/nvim-autopairs" })

	-- copilot
	-- use 'github/copilot.vim'

	-- -- pretty bars
	use("akinsho/bufferline.nvim")

	-- gitsigns
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

  -- debugging
  use {
    'mfussenegger/nvim-dap',
  }
  use {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      handlers = {},
      ensure_installed = {
        "codelldb"
      }
    }
  }
  use {
    "rcarriga/nvim-dap-ui",
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()
        dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
        dap.listeners.before.event_terminated["dapui_config"] = function()  end
    end
  }

	use({
		"stevearc/overseer.nvim",
		config = function()
			require("overseer").setup()
		end,
	})

  use {'stevearc/dressing.nvim'}
  use 'rcarriga/nvim-notify'

end)
