return {

    { 'numToStr/Comment.nvim', opts = {} },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

    --
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    'folke/neodev.nvim', -- new

    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            'hrsh7th/cmp-nvim-lsp',
        },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

	{
	  "catppuccin/nvim",
	  name = "catppuccin",
	  priority = 1000,
	  config = function()
		require("catppuccin").setup({
		  flavour = "mocha", -- latte, frappe, macchiato, mocha
		  transparent_background = false,
		})
		vim.cmd.colorscheme("catppuccin")
	  end,
	},
	{
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'onedark',
            })
        end,
    },
  {
    "ThePrimeagen/vim-be-good",
    name = "vim-be-good"
  }
}
