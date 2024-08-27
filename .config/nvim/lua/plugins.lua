return {
    -- Syntax, LSP, etc.
    { "nvim-treesitter/nvim-treesitter",  build = ":TSUpdate" }, -- Treesitter
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },           -- Autocomplete
    { "hrsh7th/cmp-nvim-lsp" },
    { "onsails/lspkind.nvim" },       -- Autocomplete icons
    { "mfussenegger/nvim-dap" },      -- Debug Adapter Protocol
    { "mhartington/formatter.nvim" }, -- Formatting
    { "VonHeikemen/lsp-zero.nvim" },
    { "jiangmiao/auto-pairs" },       -- Auto pairs
    { "windwp/nvim-ts-autotag" },     -- Autotag
    {
        "L3MON4D3/LuaSnip",           -- Snippet engine
        version = "v2.*",             -- Use the latest release version
        build = "make install_jsregexp"
    },
    -- Files
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "lewis6991/gitsigns.nvim"      -- Git status (optional)
        }
    },
    { "romgrk/barbar.nvim" }, -- Tabs
    -- Themes/Appearance
    { "rebelot/kanagawa.nvim" },
    { "olimorris/onedarkpro.nvim" },
    { "EdenEast/nightfox.nvim" },
    { "sainnhe/everforest" },
    { "xiyaowong/transparent.nvim" }, -- Transparent background
    -- Language Plugins
    { "fatih/vim-go" },               -- Go
    { "ziglang/zig.vim" },            -- Zig
    { "rust-lang/rust.vim" },         -- Rust
    { "nvim-java/nvim-java" },        -- Java
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
    { "nvim-lualine/lualine.nvim",    dependencies = { "nvim-tree/nvim-web-devicons" } }, -- Lualine
    { dir = "~/Projects/lua/jclasses" }, --        dependencies = { "MunifTanjim/nui.nvim" } }
}
