require "nvim-treesitter.configs".setup {
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
  }
}
