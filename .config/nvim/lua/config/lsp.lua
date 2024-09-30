local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(_, bufnr)
  lsp_zero.default_keymaps({ buffer = bufnr })
  lsp_zero.buffer_autoformat()
end)

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = require("config.servers"),
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup({})
    end,
  },
})

lsp_zero.set_sign_icons({
  error = "✘",
  warn = "▲",
  hint = "⚑",
  info = "»"
})
