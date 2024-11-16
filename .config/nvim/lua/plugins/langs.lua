return {
  "ziglang/zig.vim",
  "fatih/vim-go",
  "regarager/jclasses",
  {
    "nvim-java/nvim-java",
    config = function()
      require('java').setup()
      require('lspconfig').jdtls.setup({})
    end
  }
}
