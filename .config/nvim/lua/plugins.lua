return {
    -- LSP + Treesitter
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" }, -- Treesitter
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },

    -- Autocomplete
    { "hrsh7th/nvim-cmp" },          -- Autocomplete
    { "hrsh7th/cmp-nvim-lsp" },
    { "onsails/lspkind.nvim" },      -- Autocomplete icons
    { "VonHeikemen/lsp-zero.nvim" }, -- LSP config

    -- Debug
    { "mfussenegger/nvim-dap" }, -- Debug Adapter Protocol

    -- Editing
    { "mhartington/formatter.nvim" }, -- Autoformat
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },                             -- Autopairs
    { "windwp/nvim-ts-autotag", }, -- Autotag
    {
        'numToStr/Comment.nvim',
        config = function()
            require("Comment").setup({
                toggler = {
                    line = "<C-/>",
                },
                opleader = {
                    block = "<C-/>"
                }
            })
        end
    },                      -- Commenting
    {
        "L3MON4D3/LuaSnip", -- Snippet engine
        version = "v2.*",   -- Use the latest release version
        build = "make install_jsregexp"
    },

    -- Files
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})
        end
    }, -- Fuzzy find
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "lewis6991/gitsigns.nvim"      -- Git status (optional)
        }
    },                                     -- File tree
    { 'jghauser/mkdir.nvim' },             -- Automatically mkdir on save
    { "romgrk/barbar.nvim" },              -- Tabs

    -- Themes/Appearance
    { "rebelot/kanagawa.nvim" },
    { "olimorris/onedarkpro.nvim" },
    { "EdenEast/nightfox.nvim" },
    { "sainnhe/everforest" },
    { "folke/tokyonight.nvim" },
    { "xiyaowong/transparent.nvim" }, -- Transparent background

    -- Language Plugins
    { "fatih/vim-go" },        -- Go
    { "nvim-java/nvim-java" }, -- Java

    -- Misc.
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    },                                                                                 -- which-key
    { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } }, -- Lualine
    { "regarager/jclasses",        dependencies = { "MunifTanjim/nui.nvim" } }         -- Make classes for Java
}
