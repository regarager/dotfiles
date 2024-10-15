return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        ensure_installed = {
          "c",
          "cpp",
          "css",
          "go",
          "html",
          "hyprlang",
          "java",
          "javascript",
          "json",
          "jsonc",
          "lua",
          "markdown",
          "python",
          "svelte",
          "typescript",
          "markdown_inline",
          "vim"
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true
        },
        indent = { enable = true },
        autotag = { enable = true },
      })
    end
  }

}
