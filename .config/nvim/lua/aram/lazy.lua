local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- Make sure to set `mapleader`
                      -- before lazy so your mappings are correct


require("lazy").setup({
	-- Telescope:
	{
		'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	-- Tree-Sitter:
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	{"nvim-treesitter/playground"},

	-- ThePrimeagen-Harpoon:
	{"nvim-lua/plenary.nvim"},
	{"ThePrimeagen/harpoon"},

	-- Undotree
	{"mbbill/undotree"},
	{"tpope/vim-fugitive"},

	-- LSP-Zero
	{ 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', },
	-- LSP Support
	{'neovim/nvim-lspconfig'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'mfussenegger/nvim-jdtls'},

    {'mfussenegger/nvim-dap'},
    {'mfussenegger/nvim-dap-ui'},

	-- Autocompletion
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-nvim-lua'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
    {"zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end
    },
    {'folke/zen-mode.nvim'},
    {'eandrju/cellular-automaton.nvim'},
    {'laytan/cloak.nvim'},
    {'theprimeagen/refactoring.nvim'},
    {'mg979/vim-visual-multi'},

    {'nvim-tree/nvim-tree.lua'},
    {'kyazdani42/nvim-web-devicons'},
    {'nvim-tree/nvim-tree.lua'},
    {'nvim-tree/nvim-web-devicons'},

    {'NvChad/nvim-colorizer.lua'},
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },

    {
        "m4xshen/smartcolumn.nvim",
        opts = {}
    },


    -- lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- trouble
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    },

    -- alpha-nvim
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require('alpha').setup(require'alpha.themes.startify'.config)
        end
    },

    -- netrw.nvim
    {'prichrd/netrw.nvim'},

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
-- COLORSCHEMES --
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	},

    {
        'sainnhe/gruvbox-material',
        name = 'gruvbox-material'
    },
    {
        'rebelot/kanagawa.nvim',
        name = 'kanagawa'
    },
    {
        'xero/miasma.nvim',
        name = 'miasma'
    }
})

