local use = require('packer').use
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- syntax, lsp, etc.
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    } -- treesitter
    use {
        'neoclide/coc.nvim',
        branch = 'release'
    } -- autocomplete
    use 'hrsh7th/nvim-cmp' -- not sure if needed, also autocomplete
    use 'neovim/nvim-lspconfig' -- lsp
    use 'onsails/lspkind.nvim' -- autocomplete icons
    use 'mhartington/formatter.nvim' -- formatting

    -- files
    use {
  'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  } -- file explorer

    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim' -- tabs

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- themes/appearance
    use 'rebelot/kanagawa.nvim'
    use 'sainnhe/everforest'
    use "olimorris/onedarkpro.nvim"

    use 'xiyaowong/transparent.nvim' -- transparent background

    -- language plugins
    use 'fatih/vim-go' -- go
    use 'ziglang/zig.vim' -- zig
    use 'rust-lang/rust.vim' -- rust
end)
