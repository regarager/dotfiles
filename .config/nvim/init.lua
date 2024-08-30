vim.opt.ignorecase = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.number = true
vim.cmd("syntax on")
vim.opt.ttyfast = true

require("config.lazy")

require("plugins")
require("lualine").setup({
    theme = "material"
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
require('nvim-ts-autotag').setup({
    opts = {
        -- Defaults
        enable_close = true,          -- Auto close tags
        enable_rename = true,         -- Auto rename pairs of tags
        enable_close_on_slash = false -- Auto close on trailing </
    },
})

require("config.lsp")
require("config.cmp")
require("config.telescope")
require("config.autopairs")

vim.g.rustfmt_autosave = 1

vim.api.nvim_set_keymap("n", "\\", ":Neotree toggle<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Tab>", ":BufferNext<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":BufferPrevious<cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-Q>", ":BufferClose<cr>", { noremap = true })

vim.cmd.colorscheme("onedark")
vim.cmd("TransparentEnable")
