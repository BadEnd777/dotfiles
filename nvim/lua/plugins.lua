-- lua/pugins.lua
require('lazy').setup({
    "itchyny/vim-highlighturl",
    "nvim-telescope/telescope-symbols.nvim",
    "onsails/lspkind-nvim",
    "tyru/open-browser.vim",
    "honza/vim-snippets",
    "907th/vim-auto-save",
    'stevearc/dressing.nvim',

    {
        "xiyaowong/transparent.nvim",
        config = function()
            require("config.transparent")
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        config = function()
            vim.cmd.colorscheme "catppuccin-mocha"
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("config.lualine")
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require("config.nvim-tree")
        end,
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            'nvim-lua/plenary.nvim',
        }
    },

    {
        "akinsho/nvim-toggleterm.lua",
        config = function()
            require("config.toggleterm")
        end,
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-omni",
            "quangnguyen30192/cmp-nvim-ultisnips",
            "hrsh7th/cmp-emoji",
        },
        config = function()
            require("config.nvim-cmp")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("config.lsp")
        end,
    },

    {
        "glepnir/dashboard-nvim",
        config = function()
            require("config.dashboard-nvim")
        end,
    },

    {
        "rcarriga/nvim-notify",
        config = function()
            vim.defer_fn(function()
                require("config.nvim-notify")
            end, 2000)
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function()
            require("config.nvim-treesitter")
        end,
    },

    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
          "SmiteshP/nvim-navic"
        },
    }
})
