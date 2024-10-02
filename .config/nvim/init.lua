vim.opt.ignorecase = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.cmd("syntax on")
vim.opt.ttyfast = true
vim.opt.clipboard = "unnamedplus"

require("config.lazy")

require("plugins")
require("lualine").setup({
  options = {
    theme = "horizon"
  }
})
require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = require("config.servers"),
}

require("java").setup()

require("lsp-zero")
require("lspconfig").intelephense.setup({})
require('lspconfig').jdtls.setup({})
require('Comment').setup()
require('nvim-ts-autotag').setup({})
require("prettier").setup()

require("config.autopairs")
require("config.cmp")
require("config.lsp")
require("config.telescope")
require("config.treesitter")

vim.api.nvim_set_keymap("n", "\\", ":Neotree toggle<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Tab>", ":BufferNext<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":BufferPrevious<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Q>", ":BufferClose<cr>", { noremap = true })

vim.cmd.colorscheme("tokyonight-moon")
vim.cmd("TransparentEnable")

vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#999999" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#e6e6e6" })
vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#999999" })
