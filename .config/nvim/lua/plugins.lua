local use = require("packer").use
require("packer").startup(function()
    use "wbthomason/packer.nvim"

    -- syntax, lsp, etc.
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    } -- treesitter
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }                      -- autocomplete
    use "hrsh7th/nvim-cmp" -- not sure if needed, also autocomplete
    use "hrsh7th/cmp-nvim-lsp"
    use "neovim/nvim-lspconfig"
    use "onsails/lspkind.nvim"       -- autocomplete icons
    use "mhartington/formatter.nvim" -- formatting
    use "VonHeikemen/lsp-zero.nvim"

    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    })

    -- files
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
    } -- file explorer
    use "nvim-telescope/telescope.nvim"

    use "nvim-tree/nvim-web-devicons" -- OPTIONAL: for file icons
    use "lewis6991/gitsigns.nvim"     -- OPTIONAL: for git status
    use "romgrk/barbar.nvim"          -- tabs

    -- lualine
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true }
    }

    -- themes/appearance
    use "rebelot/kanagawa.nvim"
    use "sainnhe/everforest"
    use "olimorris/onedarkpro.nvim"

    use "xiyaowong/transparent.nvim" -- transparent background

    -- language plugins
    use "fatih/vim-go"       -- go
    use "ziglang/zig.vim"    -- zig
    use "rust-lang/rust.vim" -- rust
end)
