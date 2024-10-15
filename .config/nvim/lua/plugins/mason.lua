return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  config = function()
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "typos_lsp",
        "bashls",
        "biome",
        "clangd",
        "cssls",
        "cssmodules_ls",
        "css_variables",
        "gopls",
        "html",
        "hyprls",
        "intelephense",
        "jdtls",
        "jsonls",
        "texlab",
        "ts_ls",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "tailwindcss",
        "zls",
      },
    })

    mason_tool_installer.setup({
      "prettier",
      "stylua",
      "black"
    })
  end
}
